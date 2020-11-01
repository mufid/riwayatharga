class UserProductReference < ActiveRecord::Migration[6.0]
  def change
    create_table :user_products do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
    end

    add_reference :products, :original_submitter, foreign_key: {to_table: :users}
  end
end
