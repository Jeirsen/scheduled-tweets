# email:string
# password_digest:string
#
# password:string virtual
# password_confirmation:string virtual
class User < ApplicationRecord
  has_many :twitter_accounts
  has_many :tweets
  has_secure_password

  #validates :email, presence: true, format: { with: /[^.+@[\w]+\S[^\s]+$]/, message: "must be a valid email address." }
  validates :email, presence: true
  validates :password, :password_confirmation, presence: true

end
