class CreateAdvertisments < ActiveRecord::Migration[5.1]
  def change
    create_table :advertisments do |t|
      t.string :title
      t.text :copy
      t.integer :price

      t.timestamps
    end
  end
end
