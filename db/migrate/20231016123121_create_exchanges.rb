class CreateExchanges < ActiveRecord::Migration[7.0]
  def change
    create_table :exchanges do |t|
      t.references :author, foreign_key: {to_table: 'users'}
      t.references :category, foreign_key: {to_table: 'categories'}
      t.string :name
      t.integer :amount
      t.timestamps
    end
  end
end
