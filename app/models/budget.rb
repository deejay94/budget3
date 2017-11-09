class Budget < ApplicationRecord
  belongs_to :user

  validates :name, :goal, :actual, :user, presence: true
end
