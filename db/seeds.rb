# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
require "csv"

companies_csv = CSV.readlines("db/sites.csv")
companies_csv.shift
companies_csv.each do |row|
  Company.create(name: row[1], text: row[2], site_url: row[3])
end