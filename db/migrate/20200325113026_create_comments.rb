class CreateComments < ActiveRecord::Migration[6.0]
  
    def up
      create_table :comments do |t|
        t.string "title", :null =>false
        t.timestamps

      end
    end
  
  
    def down
      drop_table :comments
    end
      

end
