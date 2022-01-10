class Job < ApplicationRecord
  belongs_to :person
  enum type: {
    mitsumori: 0,
    syouninirai: 1,
    nouhinyotei: 2,
    kojoukensa: 3,
    kuremu: 4,
    wariatezu: 5
  }
end
