class Job < ApplicationRecord
  belongs_to :person
  self.inheritance_column = :_type_disabled
  validates :date, presence: true
  validates :type, presence: true
  enum type: {
    mitsumori: 0,
    syouninirai: 1,
    nouhinyotei: 2,
    ketsuron: 3,
    kuremu: 4,
    tsurikanagu: 5,
    shukin: 6,
    sonota: 7
  }
end
