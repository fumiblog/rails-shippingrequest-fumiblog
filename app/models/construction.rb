class Construction < ApplicationRecord
  belongs_to :user
  has_many :heads, dependent: :destroy
end
