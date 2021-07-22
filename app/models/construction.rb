class Construction < ApplicationRecord
  belongs_to :user
  has_many :heads, dependent: :destroy
  has_many :bodies, dependent: :destroy
  

  def full_address
    delivery_name + "【" + name + "】" + address + "（" + person + "さん）"
  end
end
