class JobsController < ApplicationController
  def index
    @jobs = Job.order("created_at desc").active
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(params[:job])
    if @job.save
      redirect_to jobs_path, notice: "You're job has been added for approval."
    else
      flash.now.alert = "Sorry there was something wrong with your job listing."
      render "new"
    end
  end
  
  def update
    @job = Job.find(params[:id])
    @job.published = params[:published]
    if @job.save
      redirect_to jobs_url, notice: "Job is active."
    else
      flash.now.alert = "Something went wrong."
      render :back
    end
  end
end
