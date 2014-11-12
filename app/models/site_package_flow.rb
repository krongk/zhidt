class SitePackageFlow < ActiveRecord::Base
  belongs_to :site_package
  belongs_to :flow
  has_many :site_package_flow_comments, dependent: :destroy
  before_destroy :destroy_resources

  def increase_edit_count
    self.edit_count += 1
    self.save!
  end

  def complete_rate
    return 5 if status == 'close'
    edit_count >= 5 ? 4.8 : self.edit_count
  end

  private
  
  def destroy_resources
    Resource.whre(source_class: 'SitePackageFlow', source_id: self.id).destroy_all
  end

end
