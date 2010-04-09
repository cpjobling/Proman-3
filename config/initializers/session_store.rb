# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_test-groundwork_session',
  :secret      => '029b4d73d959014c4586afcb0700cdd83dc152254d406d6bc02dbb009b4c32870dbaaa44f9e59a02e0fe810a42a09526d4fdfd00d4779c580d70e8f3e0d6bab3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
