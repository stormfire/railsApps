module UsersHelper

  def get_roles
    Role.where('title != ?', ROLE_NAMES[:admin]).pluck(:title, :id).collect{|role| [role.first.camelcase, role.last ]}
  end

end
