class AddCodepromoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :codepromo, :string
  end
end
