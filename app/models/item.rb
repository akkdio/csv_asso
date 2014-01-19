class Item < ActiveRecord::Base
  
  validates_presence_of :name, :category_id, :quantity_id

   belongs_to :category
   belongs_to :quantity
   
   
   def self.import(file)
     accessible_attributes = ["id","name", "category_name", "quantity_name"]
     CSV.foreach(file.path, headers: true) do |row|
       item = where(id: row["id"])
         .first_or_create!(row.to_hash.slice(*accessible_attributes))

       items.categories.where(name: row['category_name'])
         .first_or_create!(row.to_hash.slice(*category_accessible_attributes))
         items.quantities.where(name: row['quantity_name'])
            .first_or_create!(row.to_hash.slice(*quantity_accessible_attributes))
     end
   end
   
  
   
end
