# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_liftr_session',
  :secret      => '731b739579577960a15ce2eeb8da275a298bd65e2c93bf0c881402fefa62f8c6fdeb7b8d40f21a8ed8320f654ecd89785abea53faf5c739915b90029ab27f6f1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
