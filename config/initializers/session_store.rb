# Rails.application.config.session_store :cookie_store, key: '_tourdashboard_session', :expire_after => 55.minutes
# Rails.application.config.session_store :cookie_store, key: '_tourdashboard_session'

Rails.application.config.session_store :cookie_store, {
  :key =>           '_tourdashboard_session',
  :path =>          '/',
  :domain =>        nil,
  :expire_after =>  nil,
  :secure =>        false,
  :httponly =>      true,
  :cookie_only =>   true
}
