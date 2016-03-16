# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

30000.times.each() do |i|
  name = FFaker::Name.first_name
  surname = FFaker::Name.last_name
  username = "#{name.downcase}.#{surname.downcase}"
  domain = FFaker::InternetSE.domain_name
  User.create(name: name, surname: surname, email:"#{username}@#{domain}", username:username)
end
