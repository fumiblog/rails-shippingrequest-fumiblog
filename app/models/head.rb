class Head < ApplicationRecord
  belongs_to :user
  has_many :bodies, dependent: :destroy
end
