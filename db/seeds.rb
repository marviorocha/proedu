# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'Admin', lastname: 'ProEdu',
  email:'admin@admin.com', password: '102030', superadmin_role: true, studant_role: false)

studants = User.create([
{name: 'Maria', lastname: 'Emilia', email:'maria@admin.com', password: '123456',
superadmin_role: false, studant_role: true },
{name: 'João', lastname: 'Felipe', email:'joao@admin.com', password: '123456',
superadmin_role: false, studant_role: true },
{name: 'Maryana', lastname: 'João', email:'maryana@admin.com', password: '123456',
superadmin_role: false, studant_role: true }
])


