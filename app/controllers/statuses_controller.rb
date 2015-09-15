class StatusesController < ApplicationController
  before_action :set_status, only: [:update, :destroy]

  def index
    @statuses = Status.order(created_at: :desc).limit(10)
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)

    respond_to do |format|
      if @status.save
        format.json { render :index, status: :created, location: @status }
      else
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @status.update(status_params)
        format.json { render :index, status: :ok, location: @status }
      else
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @status.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    def set_status
      @status = Status.find(params[:id])
    end

    def status_params
      params.require(:status).permit(:state, :message).tap do |w|
        w[:state] = w[:state].to_i if w[:state]
      end
    end
end
