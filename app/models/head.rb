class Head < ApplicationRecord
  belongs_to :user
  has_many :bodies, dependent: :destroy
  belogs_to :construction
  enum vehicle: {
    h4t: 0,
    h5t: 1,
    h7t: 2,
    h10t: 3,
    h13t: 4,
    traler: 5
  }
end
