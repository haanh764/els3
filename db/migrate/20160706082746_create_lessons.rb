class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.belongs_to :category, index: true 
      t.belongs_to :word, index: true
      
      t.timestamps null: false
    end
  end
end
