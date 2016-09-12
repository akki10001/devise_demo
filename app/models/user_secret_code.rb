class UserSecretCode < ActiveRecord::Base
  belongs_to :user
  validates :secret_code, presence: true
end
