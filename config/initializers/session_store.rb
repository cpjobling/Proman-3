# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_proman_session',
  :secret      => '9e8853a49a0a752b742f539c506d27ff4707b671e82288e758b07ce0cefa0ffa8f82c7372925f815c49f6c68010a03609f6de7c002e53225e7f56f351cea6957'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
