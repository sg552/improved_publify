# -*- encoding : utf-8 -*-
class Redirection < ActiveRecord::Base
  belongs_to :content
  belongs_to :redirect
end
