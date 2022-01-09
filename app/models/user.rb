class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :heads, dependent: :destroy
  has_many :constructions, dependent: :destroy
  has_many :companies, dependent: :destroy

  enum department: {
    honten: 0,
    kitakei: 1,
    kennan: 2,
    chikuho: 3,
    kitakyu: 4
  }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
