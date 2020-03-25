class CreateAddRefToPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :add_ref_to_posts do |t|
      add_reference :posts, :user, foreign_key: true
    end
  end
end
