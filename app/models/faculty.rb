class Faculty < ApplicationRecord
  belongs_to :room
  has_many :subject
  has_many :course
  enum type: [ :admin, :associate, :professor, :support]
end
