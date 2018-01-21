class User < ApplicationRecord

  enum role: [:standard, :admin]
  after_initialize :set_default_role, if: :new_record?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  
  has_many :projects

  validates :email, presence: true, uniqueness: true
  # validates :username, presence: true, uniqueness: true

  def set_default_role
    self.role ||= :standard
  end
  
  private
  def self.admin?
    !!self.role == 'admin'
  end
end
