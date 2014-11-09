class SitePackageFlow < ActiveRecord::Base
  belongs_to :site_package
  belongs_to :flow
  has_many :site_package_flow_comments
end
