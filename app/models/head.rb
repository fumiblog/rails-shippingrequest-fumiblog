class Head < ApplicationRecord
  belongs_to :user
  belongs_to :construction
  has_many :shippeds, dependent: :destroy
  enum vehicle: {
    h4t: 0,
    h5t: 1,
    h7t: 2,
    h10t: 3,
    h13t: 4,
    traler: 5
  }
end
