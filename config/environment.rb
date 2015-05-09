require File.expand_path('../application', __FILE__)

Rails.application.initialize!

Time::DATE_FORMATS[:uk_datetime] = "%d-%m-%Y"
