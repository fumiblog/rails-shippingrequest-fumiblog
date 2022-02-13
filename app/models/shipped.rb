class Shipped < ApplicationRecord
  belongs_to :head
  belongs_to :body
end
