class CreateSuccesses < ActiveRecord::Migration
  def change
    create_table :successes do |t|
      t.text :content
      t.string :image
      t.string :category

      t.timestamps null: false
    end
  end
end
