# -*- encoding : utf-8 -*-
module Admin::SeoHelper
  def robot_writable?
    File.writable?"#{::Rails.root.to_s}/public/robots.txt"
  end
end
