class Company < ApplicationRecord
  has_many :persons, dependent: :destroy
  belongs_to :user
  has_many :heads, dependent: :destroy
  has_many :construction, dependent: :destroy
end
