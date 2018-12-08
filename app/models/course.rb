class Course < ApplicationRecord
  belongs_to :faculty, optional: true
  has_many :subject, :dependent => :destroy
  
end
