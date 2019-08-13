class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :assign_default_role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
          jwt_revocation_strategy: JwtBlacklist


  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end
end
