# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pandora_session',
  :secret      => '3650f10dd95f6b01f94caa0ce29935fdfa752c6a8e572c847fa28ba54d0f7389aa29f689f1bc937a5140cdbfdf2ad0a75277ccfd5b354ac8d64e222f8c8340a9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
