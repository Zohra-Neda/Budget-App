class CreateExchanges < ActiveRecord::Migration[7.0]
  def change
    create_table :exchanges do |t|

      t.timestamps
    end
  end
end
