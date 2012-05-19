class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  has_secure_password
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /^[A-Z0-9\.%\+\-\']+@(?:[A-Z0-9\-]+\.)+(?:[A-Z]{2,4}|museum|travel)$/i }
  validates :password, :password_confirmation, presence: true, on: :create
end
