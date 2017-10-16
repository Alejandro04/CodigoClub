
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:omniauthable,
         :omniauth_providers => [:facebook]
  has_many :posts

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/minion.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_attached_file :cover, styles: { medium: "800x600>", thumb: "400x300>" }, default_url: "/images/:style/missing_cover.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
  def self.from_omniauth(auth)
  	where(provider: auth[:provider], uid:auth[:uid]).first_or_create do |user|
  		if auth[:info]
  			user.email = auth[:info][:email]
  			user.name = auth[:info][:name]
  		end
  		user.password = Devise.friendly_token[0,20]
  	end
  end

end
