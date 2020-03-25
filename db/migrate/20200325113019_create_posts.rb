class CreatePosts < ActiveRecord::Migration[6.0]
  

  def up
    create_table :posts do |t|
      t.string "title", :limit => 50, :null =>false
      t.text "body", :null =>false, unique: true        
      t.timestamps

    end
  end


  def down
    drop_table :posts
  end

      
end
