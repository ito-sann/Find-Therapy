class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        with_options presence: true do
          validates :name
          validates :profile
          validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
        end
  has_many :stores
  has_many :comments
  has_many :likes
  
  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.name = "テストユーザー"
      user.profile = "テストユーザーです"
      user.password = SecureRandom.urlsafe_base64
      user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end