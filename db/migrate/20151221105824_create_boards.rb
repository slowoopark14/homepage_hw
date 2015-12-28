class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
    	t.integer :user_id
    	t.string :email
    	t.text :content

      t.timestamps null: false
    end
  end
end
