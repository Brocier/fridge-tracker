Fridge.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

fridge = Fridge.create(location: 'Kitchen', brand: 'Maytag', size: 80)
Food.create(fridge: fridge, name: 'Apple', weight: 4, is_vegan: true)
Food.create(fridge: fridge, name: 'Banana', weight: 3, is_vegan: true)
Food.create(fridge: fridge, name: 'Kiwi', weight: 9, is_vegan: true)
Drink.create(fridge: fridge, name: 'Brawndo', size: 12, is_alcoholic: false)