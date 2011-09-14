class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => '100x100#', :thumb => ['24x24#', :jpg] },
                             :convert_options => { :thumb => '-quality 92 -unsharp 0x1' },
                             :url => '/assets/:attachment/:id/:style/:basename.:extension',
                             :path => ':rails_root/public/assets/:attachment/:id/:style/:basename.:extension'

  validates_attachment_content_type :avatar, :content_type => /^image\/(:?p?jpe?g|(:?x-)?png|gif)$/
  validates_attachment_size :avatar, :less_than => 2.megabytes
end
