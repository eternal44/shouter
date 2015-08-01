# == Schema Information
#
# Table name: photo_shouts
#
#  id                 :integer          not null, primary key
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class PhotoShout < ActiveRecord::Base
  has_attached_file :image, styles: {
    shout: "200x200>"
  }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
