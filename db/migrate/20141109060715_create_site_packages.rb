class CreateSitePackages < ActiveRecord::Migration
  def change
    create_table :site_packages do |t|
      t.references :site, index: true
      t.references :package, index: true
    end
  end
end
