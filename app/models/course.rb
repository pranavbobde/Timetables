class Course < ApplicationRecord
  belongs_to :faculty, optional: true, :dependent => :destroy
  has_many :subject, :dependent => :destroy
end
