namespace :ldap do
  require 'net/ldap'
  def utilisateursLDAP 
    ldap = Net::LDAP.new :host => '127.0.0.1',
      :port => 389,
      :auth => {
      :method => :simple,
      :username => "cn=admin,dc=cos",
      :password => password}
    if ldap
      puts "Connexion to LDAP OK\n"
      filter = Net::LDAP::Filter.eq( "cn", "*" )
      treebase = "ou=Salaries,ou=Professionnels,dc=cos"
      recherche=ldap.search( :base => treebase, :filter => filter)
      utilisateurs=recherche.map{ |user|  {:nom=>user[:sn][0].to_s,
        :prenom=>user[:givenname][0].to_s,
        :login=>user[:uid][0].to_s} }
      puts "#{utilisateurs.length} utilisateurs"
      puts 'Tri...'
      utilisateurs.sort!{ |user1, user2| user1[:nom] <=> user2[:nom] }
      puts "Ok\n"
      return utilisateurs
    end
  end

  def groupesLDAP 
    ldap = Net::LDAP.new :host => '127.0.0.1',
      :port => 389,
      :auth => {
      :method => :simple,
      :username => "cn=admin,dc=cos",
      :password => password}
    if ldap
      puts "Connexion to LDAP OK\n"
      filter = Net::LDAP::Filter.eq( "cn", "*" )
      treebase = "ou=Equipes,dc=cos"
      recherche=ldap.search( :base => treebase, :filter => filter)
      groupes=recherche.map{ |group|  {:nom=>group[:cn][0].to_s} }
      puts "#{groupes.length} groupes"
      puts 'Tri...'
      groupes.sort!{ |groupe1, groupe2| groupe1[:nom] <=> groupe2[:nom] }
      puts "Ok\n"
      return groupes
    end
  end

  
  namespace :users do
    desc "prints all LDAP users found in the local OpenLDAP server"
    task :print  => :environment do
      utilisateurs=utilisateursLDAP
      utilisateurs.each { |user| puts user[:nom]+ " "+user[:prenom] }
      puts "\n #{utilisateurs.length} utilisateurs"
    end

    desc "Import all the user in the current Pandora's database"
    task :bulkimport => :environment do
      utilisateurs=utilisateursLDAP
      service_neant=Service.find_by_nom "neant"
      fonction_neant=Fonction.find_by_intitule "neant"
      site_neant=Site.find_by_nom "neant"
      utilisateurs.each do |user|
        u=Utilisateur.new :nom=>user[:nom],
          :prenom=>user[:prenom],
          :login=>user[:login]
        u.service=service_neant
        u.site=site_neant
        u.fonction=fonction_neant
        u.save
        puts "#{u.nom} #{u.prenom} imported"
      end
    end

    desc "Import all the user in the current Pandora's database"
    task :import => :environment do
      utilisateurs=utilisateursLDAP
      service_neant=Service.find_by_nom "neant"
      fonction_neant=Fonction.find_by_intitule "neant"
      site_neant=Site.find_by_nom "neant"
      utilisateurs.each do |user|
        if Utilisateur.find_by_login(user[:login])
          puts "#{user[:login]} already exists"
        else
          u=Utilisateur.new :nom=>user[:nom],
            :prenom=>user[:prenom],
            :login=>user[:login]
          u.service=service_neant
          u.site=site_neant
          u.fonction=fonction_neant
          u.save
          puts "#{u.nom} #{u.prenom} imported"
        end
      end

    end
  end

  namespace :groups do
    desc "print LDAP groups"
    task :print => :environment do
      groupesLDAP.each{ |group|  puts group[:nom]}
      puts "\n"
    end
  end

end

