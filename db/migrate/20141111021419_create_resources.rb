class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :resource_type
      t.string :source_class
      t.string :source_id
      t.timestamps
    end
    add_attachment :resources, :asset
  end
end
