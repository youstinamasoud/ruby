class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users , :password , :string 
    add_column :users , :dataofbirth , :date
    add_column :users , :gender , :boolean
    add_column :users , :image , :string
    
  end
end
