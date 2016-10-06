# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
require "csv"

sites_csv = CSV.readlines("db/sites.csv")
sites_csv.shift
sites_csv.each do |row|
  row.encode("UTF-8", :invalid => :replace)
  Site.create(name: row[1], text: row[2], site_url: row[3], iamge_url: row[4], category_id: row[5], created_at: row[6], updated_at: row[7])


end