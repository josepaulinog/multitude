require 'rack-cas/session_store/rails/active_record'
Multitude::Application.config.session_store :rack_cas_active_record_store
