class Course < ApplicationRecord

    belongs_to :user
    has_many :lectures

    validates :title, presence: true
    validates :title, uniqueness: true
    validates :description, presence: true
   

    
    

end
