module ApplicationHelper

  def is_login_page?
    controller_name == 'user_sessions'
  end

end
