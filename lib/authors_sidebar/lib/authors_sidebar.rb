# -*- encoding : utf-8 -*-
class AuthorsSidebar < Sidebar
  display_name "Authors"
  description "Displays a list of authors ordered by name with links to their articles and profile"

  setting :count, true,  :label => 'Show articles number',      :input_type => :checkbox

  def authors
    @authors = User.find(:all, :conditions => {:state => 'active'}, :order => 'name')
  end
end
