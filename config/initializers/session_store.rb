# Be sure to restart your server when you modify this file.

PusherChat::Application.config.session_store :cookie_store, :key => '_pusher_chat_session'

# Make the sessions last a lot longer.
Rails.application.config.session_store :cookie_store, :key => "rvanchat", :expire_after => 1.year

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# PusherChat::Application.config.session_store :active_record_store
