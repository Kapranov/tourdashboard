#
# config/environments/development.rb
# my_date_formats = { :default => '%Y-%m-%d' }
# Date::DATE_FORMATS.merge!(my_date_formats)
# # Or this that I found in another suggestion.
# Date::DATE_FORMATS[:default]="%Y-%m-%d"
#
# why dont you try using "12/12/2014".split('/').join('-').
# This will convert date format.
#
# <%= f.date_field :date, required: true %>
#

Date::DATE_FORMATS[:month_and_year] = '%d-%m-%Y'
