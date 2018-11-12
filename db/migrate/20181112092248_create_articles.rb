class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title 
      t.integer :user_id
      t.text :content 
      t.string :link 
      t.timestamps
    end
  end
end
