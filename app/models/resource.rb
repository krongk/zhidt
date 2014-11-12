class Resource < ActiveRecord::Base
  has_attached_file :asset,
                    :path => "zhidat/flow/:class/:id/:style.:extension"
                    #maybe a picture/audio/video/pdf/doc
                    #:styles => {:original => '640x640>'} #override the original file
                    #:styles => { :small => '150x150#' } #standerd mobile size: 320*480 480*800 640*960

  validates_attachment_size :asset, :less_than => 8.megabytes
  #invalid on LG mobile, why?
  #validates_attachment_presence :asset

  #update to version 4.0
  #validates_attachment_content_type :asset, :content_type => /\Aimage/

  # Explicitly do not validate
  do_not_validate_attachment_file_type :asset

  validates :source_class, presence: true
  validates :source_id, presence: true

  def self.assets(source_class, source_id)
    where(source_class: source_class.to_s, source_id: source_id)
  end
end


# show image in your view
#   <%= qiniu_image_tag @image.file.url, :thumbnail => '300x300>', :quality => 80 %>
#   or
#   <%= image_tag qiniu_image_path(@image.file.url, :thumbnail => '300x300>', :quality => 80) %>