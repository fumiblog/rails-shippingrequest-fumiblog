class Head < ApplicationRecord
  belongs_to :user
  belongs_to :construction
  belongs_to :company
  has_many :shippeds, dependent: :destroy
  has_many :bodies, through: :shippeds
  accepts_nested_attributes_for :shippeds, reject_if: :reject_shipped, allow_destroy: true
  def reject_shipped(attributes)
    exists = attributes[:id].present?
    empty = attributes[:quantity].blank?
    attributes.merge!(_destroy: 1) if exists && empty
    !exists && empty
  end
  enum vehicle: {
    h4t: 0,
    h5t: 1,
    h7t: 2,
    h10t: 3,
    h13t: 4,
    traler: 5,
    kogata: 6,
    chugata: 7,
    oogata: 8
  }
end
