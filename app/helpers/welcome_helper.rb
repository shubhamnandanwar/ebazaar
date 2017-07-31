module WelcomeHelper
  def get_page
    if current_user && current_user.role == "admin"
      render 'admin_home'
    else
      render 'user_home'
    end
  end
end
