class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :biens, dependent: :destroy
  has_one_attached :profilepic


  def profile_picture
    if profilepic.attached?
      profilepic.key
    else
      "avatar-unknown.jpg"
    end
  end

end
