# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_campus_manager_session',
  :secret      => '3d731728785550a67b1e3efe5d451ae429c280576b74f532c0e7b940d5981f5571119924a8bfc98b624cad52418e72f5ed51befef0132b6a159c8eddb0695ed8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
