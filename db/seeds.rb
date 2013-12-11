# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Mptype.create([{mptype: 'itunes'}])
# Admin.create({email: 'admin@comcast.com', password: 'password1', password_confirmation: 'password1'})


Mptype.create([{mptype: 'itunes'},{mptype: 'ad'},{mptype: 'location'},{mptype: 'bookmark'}])
Admin.create(:email => "admin@comcast.com", :password => "password", :password_confirmation => "password")