# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p 'Deleting user restaurante tags...'

UserRestauranteTag.delete_all

p 'User Restaurante Tags deleted!'

p 'Deleting restaurantes...'

Restaurante.delete_all

p 'Restaurantes deleted!'

p 'Creating restaurantes...'

takumi = Restaurante.new(name: 'Takumi',
)
takumi.save
p takumi

p 'Creating user restaurante tags...'

tag_takumi_ale = UserRestauranteTag.new(
                                        user_id: 1,
                                        
)
tag_takumi_ale.restaurante_id = takumi.id
tag_takumi_ale.save
p tag_takumi_ale