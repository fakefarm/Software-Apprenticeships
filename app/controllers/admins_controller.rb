class AdminsController < ApplicationController
  
  before_filter :is_admin?
  
  def index
    @jobs = Job.pending
  end

  def show
    @job = Job.find(params[:id])
    
  end
end
