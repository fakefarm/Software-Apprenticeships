class Job < ActiveRecord::Base
  attr_accessible :title, :category, :location, :description, :inquiry, :company, :url, :email, :reason, :highlight
  
end
