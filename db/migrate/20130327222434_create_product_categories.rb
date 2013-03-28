class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.references :category
      t.references :product

      t.timestamps
    end
  end
end
