class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         acts_as_voter
         acts_as_commontator
         mount_uploader :image, ImageUploader   
        validates :image, file_size: { less_than: 1.megabytes }
        
        has_many :courses
        has_many :lectures
        has_many :comments

        
    

end
