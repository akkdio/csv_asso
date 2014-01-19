class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :name
      t.integer :position

      t.timestamps
    end
  end
end
