class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :origin
      t.string :meaning
      t.string :status

      t.timestamps null: false
    end
  end
end
