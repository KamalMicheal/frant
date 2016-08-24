module ApplicationHelper
  def is_admin?
    # TODO: refactor after designing admin login
    true
  end

  def validate_and_return_if_not_admin
    redirect_to :controller => 'home', :action => 'index' unless is_admin?
  end

end
