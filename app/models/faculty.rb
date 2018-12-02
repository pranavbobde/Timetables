class Faculty < ApplicationRecord
  belongs_to :room
  has_many :subject, :dependent => :destroy
  has_many :course, :dependent => :destroy
  enum stafftype: [ :admin, :associate, :professor, :support]
end
