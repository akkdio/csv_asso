class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.text :name

      t.timestamps
    end
  end
end
