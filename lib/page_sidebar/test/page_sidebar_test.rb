# -*- encoding : utf-8 -*-
require 'test/unit'
require File.dirname(__FILE__) + '/../../../../test/test_helper'

class PageSidebarTest < Test::Unit::TestCase
  def test_sidebar_is_available
    assert Sidebar.available_sidebars.include?(PageSidebar)
  end
end
