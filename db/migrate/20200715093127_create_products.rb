class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :original_url
      t.string :external_id, null: false

      t.timestamps
    end

    add_index :products, :external_id, unique: true
  end
end
