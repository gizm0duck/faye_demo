# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mock_app_server_session',
  :secret      => '438b0779929f42b7e19bd49603ba5f3630d7febe9ced65895e797c0c681e8f8cecc8b446b0b52d60cf180d8164e2e7e440ff34ef0fdf97ba3bde852ee1ad7c2a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
