class Faculty < ApplicationRecord
  belongs_to :room
  has_many :subject
  has_many :course
  enum stafftype: [ :admin, :associate, :professor, :support]
end
