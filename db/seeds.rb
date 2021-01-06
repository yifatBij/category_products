categories = Category.create([{name: 'root', left: 1, right: 14}, 
{name: 'left-1', left: 2, right: 7}, 
{name: 'right-1', left: 8, right: 13}])
category_l_1 = Category.create({name: 'left-1-1', left: 3, right: 4})
category_l_2 = Category.create({name: 'left-1-2', left: 5, right: 6})
category_r_1 = Category.create({name: 'right-1-1', left: 9, right: 10})
category_r_2 = Category.create({name: 'right-1-2', left: 11, right: 12,})


Product.create(name: 'Productl-1', category_id: category_l_1.id)
Product.create(name: 'Productl-1.2', category_id: category_l_1.id)
Product.create(name: 'Productr-1', category_id: category_r_1.id)
Product.create(name: 'Productr-1.2', category_id: category_r_1.id)
Product.create(name: 'Productl-2.2', category_id: category_l_2.id)

15.times{|i| Product.create(name: "Productl-2.#{3 + i}", category_id: category_l_2.id)}