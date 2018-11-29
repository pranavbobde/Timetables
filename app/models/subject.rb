class Subject < ApplicationRecord
  belongs_to :course, optional: true
  belongs_to :faculty, optional: true
end
