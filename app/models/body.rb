class Body < ApplicationRecord
  belongs_to :construction
  has_many :shippeds, dependent: :destroy
  has_many :heads, through: :shippeds
  enum format: {
    ke: 0,
    ko: 1,
    m: 2,
    ryubei: 3,
    ki: 4
  }
end
