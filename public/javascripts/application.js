// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery( function(){

    $("tr.lignepaire td").hover( 
      function(){
        $(this).parent().removeClass('lignepaire').addClass('highlight');
      },
      function(){
        $(this).parent().removeClass('highlight').addClass('lignepaire');
      });
      $("tr.ligneimpaire td").hover( 
        function(){
          $(this).parent().removeClass('ligneimpaire').addClass('highlight');
        },
        function(){
          $(this).parent().removeClass('highlight').addClass('ligneimpaire');
        });
    });

