class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  has_one :user_secret_code
  accepts_nested_attributes_for :user_secret_code
end
