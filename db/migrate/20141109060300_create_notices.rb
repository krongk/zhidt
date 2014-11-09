class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.references :user, index: true
      t.string :level, default: 'info'
      t.string :message
      t.boolean :is_read, default: false

      t.timestamps
    end
  end
end
