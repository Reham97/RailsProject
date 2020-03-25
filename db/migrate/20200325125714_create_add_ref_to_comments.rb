class CreateAddRefToComments < ActiveRecord::Migration[6.0]
  def change
    create_table :add_ref_to_comments do |t|
      add_reference :comments, :post, foreign_key: true
      add_reference :comments, :user, foreign_key: true

    end
  end
end
