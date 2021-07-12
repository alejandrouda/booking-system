# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p 'Creating restaurantes...'

takumi = Restaurante.new(name: 'Takumi',
                         owner_first_name: 'Alejandro',
                         owner_last_name: 'Udaquiola',
                         owner_email: 'alejandro.udaquiola@gmail.com',
                         plan: 'premium'

)
takumi.save
p takumi