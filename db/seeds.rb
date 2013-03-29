Storefront.delete_all
Product.delete_all

storefronts = [ Storefront.create(name: 'Belly'),
                Storefront.create(name: 'Pepsi')]

storefronts.each do |storefront|
  5.times { storefront.products.create(
                              title: Faker::Product.product_name,
                              description: Faker::Lorem.paragraph) }
end

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
