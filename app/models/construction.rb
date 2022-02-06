class Construction < ApplicationRecord
  belongs_to :user
  has_many :heads, dependent: :destroy
  has_many :bodies, dependent: :destroy
  belongs_to :company
  mount_uploader :image, ImageUploader
  

  def full_address
    delivery_name + "【" + name + "】" + address + "（" + person + "さん）"
  end
end
