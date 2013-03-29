Product.create(
  title: 'Dog',
  description: 'Golden Retriever'
)

Product.create(
  title: 'Cat',
  description: 'Siamese'
)

Product.create(
  title: 'Mouse',
  description: 'Albino'
)

Belly::Category.create(
  title: '1 ' + Faker::Product.brand,
  description: Faker::Lorem.sentence(7),
  active: true
)
Belly::Category.create(
  title: '2 ' + Faker::Product.brand,
  description: Faker::Lorem.sentence(7),
  active: false
)
