class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.string "email", :limit => 50, :null =>false
      t.string "name", :limit => 40, :null =>false
      t.string "password", :limit => 10, :null =>false
     
      t.timestamps
    end
  end


  def down
    drop_table :users
  end
end
