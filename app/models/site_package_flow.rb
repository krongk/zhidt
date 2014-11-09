class SitePackageFlow < ActiveRecord::Base
  belongs_to :site_package
  belongs_to :flow
end
