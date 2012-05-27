class JobsController < ApplicationController
  def index
    @jobs = Job.order("created_at desc")
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params[:job])
    if @job.save
      redirect_to job_url(@job), notice: "Good!"
    else
      render "new", notice: "sorry, try again"
    end      
  end
  
  def preview
  end

  def payment
  end
end
