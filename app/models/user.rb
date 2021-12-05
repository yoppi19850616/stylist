class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname,            presence: true
  validates :last_name,           presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/ }
  validates :first_name,          presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/ }
  validates :last_name_furigana,  presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :first_name_furigana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :phonenumber,         presence: true
  validates :password,            format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/ }

end
