class CreateFlows < ActiveRecord::Migration
  def change
    create_table :flows do |t|
      t.references :package, index: true
      t.string :title
      t.string :description
      t.text :temp_content
      t.text :tutorial
      t.string :icon, default: 'pencil'

      t.timestamps
    end
  end
end
