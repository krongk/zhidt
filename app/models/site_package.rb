class SitePackage < ActiveRecord::Base
  belongs_to :site
  belongs_to :package
  has_many :site_package_flows
end
