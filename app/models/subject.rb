class Subject < ApplicationRecord
  belongs_to :course, optional: true, :dependent => :destroy
  belongs_to :faculty, optional: true, :dependent => :destroy
  belongs_to :subscriptions, optional: true, :dependent => :destroy
end
