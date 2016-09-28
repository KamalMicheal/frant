module ApplicationHelper
  def is_admin?
    # TODO: refactor after designing admin login
    true
  end

  def validate_and_return_if_not_admin
    redirect_to :controller => 'home', :action => 'index' unless is_admin?
  end

  def get_authors_for_select
    Author.order('priority desc, name').collect {|author| [author.name, author.id]}
  end

  def get_categories_for_select
    Category.order('priority desc, name').collect {|category| [category.name, category.id]}
  end

end
