class Task < ApplicationRecord
  belongs_to :improvements
  belongs_to :user
end
