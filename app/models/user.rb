class User < ActiveRecord::Base
	has_many :users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:admin, :author, :regular_user]

  before_create :set_default_role, if: :new_record?

  def set_default_role
  	self.role ||= :regular_user
  end
end
