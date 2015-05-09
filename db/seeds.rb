# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html
# http://www.thegeekstuff.com/2012/09/sqlite-command-examples/
#
# bash> sqlite3 company.db < insert-data.sql
#
# Country.create(name: 'Germany', population: 81831000)
#
# country_list = [
#   [ "Germany", 81831000 ],
#   [ "France", 65447374 ],
#   [ "Belgium", 10839905 ],
#   [ "Netherlands", 16680000 ]
# ]
#
# country_list.each do |name, population|
#   Country.create( name: name, population: population )
# end
#
# Generating seeds.rb From Existing Data
#
# Sometimes it can be useful to export the current data pool of a Rails application into a db/seeds.rb
# We create our own little rake task for that. That can be done by creating the file lib/tasks/export.rake
# with the following content:
#
# namespace :export do
#   desc "Prints Country.all in a seeds.rb way."
#   task :seeds_format => :environment do
#     Country.order(:id).all.each do |country|
#       puts "Country.create(#{country.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
#     end
#   end
# end
#
# Then you can call the corresponding rake task with the command rake export:seeds_format:
#
# $ rake export:seeds_format
# Country.create("name"=>"Germany", "population"=>81831000) ...
#
# You can either expand this program so that the output is written directly into the db/seeds.rb or you can simply use the shell:
# $ rake export:seeds_format > db/seeds.rb
#
# If you want to use UTF-8 characters in your db/seeds.rb, then you need to enter the line
# # ruby encoding: utf-8
# at the beginning of the file.
# # ruby encoding: utf-8
# Country.create(name: 'Germany', population: 81831000)
# Country.create(name: 'France', population: 65447374)
# Country.create(name: 'Belgium', population: 10839905)
# Country.create(name: 'Netherlands', population: 16680000)
# Country.create(name: 'Austria', population: 8440465)
# Country.create(name: 'Republika e Shqipërisë', population: 2831741)
#
