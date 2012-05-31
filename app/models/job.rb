class Job < ActiveRecord::Base
  attr_accessible :title, :category, :location, :description, :inquiry, :company, :url, :email, :reason, :highlight
  
  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :inquiry, presence: true
  validates :company, presence: true
  validates :url, presence: true
  validates :email, presence: true
  validates :reason, presence: true
  
  scope :active, order("created_at desc").where(published: true)
  scope :pending, order("created_at desc").where(published: false)
  
end
