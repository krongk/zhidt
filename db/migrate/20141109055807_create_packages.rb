class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :title
      t.string :description
      t.string :icon, default: 'tasks'

      t.timestamps
    end
  end
end
