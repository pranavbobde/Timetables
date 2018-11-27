class Faculty < ApplicationRecord
  belongs_to :room
  enum type: [ :admin, :associate, :professor, :support]
end
