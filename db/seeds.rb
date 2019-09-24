# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'Admin', lastname: 'ProEdu',
  email:'admin@admin.com', password: '102030', superadmin_role: true, studant_role: false)

10.times do |index|
User.create(name: Faker::Name.first_name, email: Faker::Internet.email, 
            lastname: Faker::Name.last_name, password: '123456', 
            superadmin_role: false, studant_role: true )
end

10.times do |index|

  Category.create(name: Faker::Educator.course_name)

end

puts "User created with success User: #{User.count}  Categories: #{Category.count}"