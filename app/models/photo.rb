class Photo < ActiveRecord::Base
  belongs_to :product
  
  has_attached_file :data,
    :storage => :s3,
    :bucket => 'm-store',
    :styles => {
      :thumb => "80x80#",
      :small  => "190x130#",
      :medium  => "300x300#",
      :big => "800x600>"
    },
    :s3_credentials => {
      :access_key_id     => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    }
end
