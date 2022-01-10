class Shipped < ApplicationRecord
  belongs_to :head
  belongs_to :body
  enum unic: {
    none: false,
    yes: true 
  }
  enum waiting_place: {
    none: false,
    yes: true
  }
end
