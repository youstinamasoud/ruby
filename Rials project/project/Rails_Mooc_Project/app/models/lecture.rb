class Lecture < ApplicationRecord
    belongs_to :course
    belongs_to :user
    has_many :comments
    acts_as_votable
    acts_as_commontable
    mount_uploader :attachment, AttachmentUploader
    validates :content , presence: true
    validates :course_id, presence: true
    
  
   
end
