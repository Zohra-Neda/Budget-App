class ChangeNameColumnInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :name, :string, default: "", null: false
  end
end
