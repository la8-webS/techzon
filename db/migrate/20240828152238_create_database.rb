class CreateDatabase < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.string :password_digest
    end
    
    create_table :items do |t|
      t.string :name
      t.integer :price
    end
    
    create_table :logs do |t|
      t.integer :user_id
      t.integer :item_id
    end
  end
end
