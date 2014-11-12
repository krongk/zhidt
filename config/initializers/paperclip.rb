Paperclip::Attachment.default_options[:storage] = :qiniu
Paperclip::Attachment.default_options[:qiniu_credentials] = {
  :access_key => Rails.application.secrets.qiniu_access_key || raise("set env QINIU_ACCESS_KEY"),
  :secret_key => Rails.application.secrets.qiniu_secret_key || raise("set env QINIU_SECRET_KEY")
}
Paperclip::Attachment.default_options[:bucket] = 'song-dev'
Paperclip::Attachment.default_options[:use_timestamp] = false
Paperclip::Attachment.default_options[:qiniu_host] = 'http://song-dev.qiniudn.com'