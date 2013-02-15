class CreateStorefronts < ActiveRecord::Migration

  def change
    create_table :storefronts do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
