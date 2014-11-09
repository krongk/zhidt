class Package < ActiveRecord::Base
  has_many :flows
end
