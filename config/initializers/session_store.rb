# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_google_stats_session',
  :secret      => '5a32845fb343cf2a95d0f6893a9e53f50f77e92033950a76789cb5b73cce566d3fa109ea82d7267b886b329a86d7669a844628e73ba0d90d691f96e5fca0ff20'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
