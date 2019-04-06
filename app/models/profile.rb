class Profile <ActiveRecord::Base
   belongs_to :user 
   
   mount_uploader :picture, PictureUploader
   
   def picture_size
      if picture.size > 5.megabytes
         errors.add(:picture, "Should be less than 5MB")
      end
   end
    
end