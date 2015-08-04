class User < ActiveRecord::Base
  acts_as_authentic

  belongs_to :role

  validates :email, :first_name, :last_name, :password, :role_id, :presence => true

  def is_admin?
    role.title == ROLE_NAMES[:admin]
  end

  def is_user?
    role.title == ROLE_NAMES[:user]
  end

  def full_name
    [first_name, last_name].compact.join(" ")
  end

end
