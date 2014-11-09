class CreateSitePackageFlowComments < ActiveRecord::Migration
  def change
    create_table :site_package_flow_comments do |t|
      t.references :site_package_flow, index: true
      t.text :content

      t.timestamps
    end
  end
end
