class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
		 :recoverable, :rememberable, :validatable, :confirmable, :trackable
	has_many :memberships
	has_many :organizations, through: :memberships
	has_many :projects
	has_many :ideas
end
