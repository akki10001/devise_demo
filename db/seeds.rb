# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# if you want a user is admin or only user, so we need to create two more table user_role and role. user_role table have attributes like user_id, role_id. Role table have attributes role_name.
admin = User.new({ firstname: "Admin",lastname: "Sir", email: 'admin@rubyonrails.com',
               password: 'password', password_confirmation: 'password'}).save(validate: :false)


