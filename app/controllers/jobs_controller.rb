class JobsController < ApplicationController
  def index
    @jobs = Job.order("created_at desc")
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    session[:job_params] ||= {}
    @job = Job.new
  end

  def create
    # Will get to this once we start submitting the payment form.
    # session[:job_params].deep_merge!(params[:order]) if params[:order]
    # @job = Job.new(session[:job_params])
  end
  
  def preview
    @job_preview = session[:job_params].deep_merge!(params[:job]) if params[:job]
  end

  def payment
    @job = Job.new
  end
end
