class Body < ApplicationRecord
  belongs_to :construction
  has_many :shippeds, dependent: :destroy
  has_many :heads, through: :shippeds
  enum format: {
    ke: 0,
    ko: 1,
    m: 2,
    ryubei: 3,
    ki: 4,
    hon: 5,
    mai: 6,
    ton: 7
  }
end
