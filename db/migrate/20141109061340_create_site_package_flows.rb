class CreateSitePackageFlows < ActiveRecord::Migration
  def change
    create_table :site_package_flows do |t|
      t.references :site_package, index: true
      t.references :flow, index: true
      t.text :content
      t.string :status, default: 'open'

      t.timestamps
    end
  end
end
