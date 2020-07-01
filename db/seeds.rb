# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# add Admin, Teacher, Student, Account
user =  User.create([
    {fname: "Administrator", lname: "Pro",  avatar: "https://api.adorable.io/avatars/200/nose1/mouth1/abott@adorable.io.png", email: "admin@proedu.com", password: "102030br", admin: 1, teacher: 0, student: 0 },
    {fname: "Teacher", lname: "Pro",  avatar: "https://api.adorable.io/avatars/200/nose3/mouth3/abott@adorable.io.png", email: "teacher@proedu.com", password: "102030br", admin: 0, teacher: 1, student: 0 },
    {fname: "Student", lname: "Pro", avatar: "https://api.adorable.io/avatars/200/nose2/mouth1/abott@adorable.io.png", email: "student@proedu.com", password: "102030br", admin: 0, teacher: 0, student: 1 },
])

# create facker Student

10.times {
    User.create(fname: Faker::Name.first_name,  avatar: "https://api.adorable.io/avatars/200/nose4/mouth4/abott@adorable.io.png", lname: Faker::Name.last_name, email: Faker::Internet.email, password: "102030", student: 1 )
}

5.times {
    Curse.create(name: Faker::Educator.subject, photo: "https://picsum.photos/1600/1200", description: Faker::Lorem.sentence )
}

puts "Total de usuários adicionado: #{User.count}"
puts "Curse adicionado: #{Curse.count}"
