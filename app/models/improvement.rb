class Improvement < ApplicationRecord
  belongs_to :segment
  belongs_to :system
  belongs_to :type
  belongs_to :priority
  belongs_to :director
  belongs_to :status
  belongs_to :provider
  belongs_to :area
  belongs_to :requester
  belongs_to :responsible

  has_many :tasks
  belongs_to :user


end
