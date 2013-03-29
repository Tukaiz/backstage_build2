Storefront.delete_all
Product.delete_all

storefronts = [ Storefront.create(name: 'Belly'),
                Storefront.create(name: 'Pepsi')]

storefronts.each do |storefront|
  5.times { storefront.products.create(
                              title: Faker::Product.product_name,
                              description: Faker::Lorem.paragraph) }
end