class Body < ApplicationRecord
  belongs_to :construction
  enum format: {
    ke: 0,
    ko: 1,
    m: 2,
    ryubei: 3,
    ki: 4
  }
end
