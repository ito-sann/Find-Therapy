class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string      :name,       null: false  
      t.text        :description,null: false   
      t.text        :image  
      t.integer     :animal_id,  null: false      
      t.integer     :region_id,  null: false         
      t.string      :address,    null: false   
      t.references :user,        null: false, foreign_key: true   
      t.timestamps
    end
  end
end
