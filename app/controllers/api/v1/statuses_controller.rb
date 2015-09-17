class Api::V1::StatusesController < Api::ApiController
  before_action :set_status, only: [:update, :destroy]
  before_filter :authenticate, except: [:index]
  respond_to :json

  def index
    @statuses = Status.order(created_at: :desc).limit(10)
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      render :index, status: :created, location: @status
    else
      render json: @status.errors, status: :unprocessable_entity
    end
  end

  def update
    if @status.update(status_params)
      render :index, status: :ok, location: @status
    else
      render json: @status.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @status.destroy
    head :no_content
  end

  private
    def set_status
      @status = Status.find(params[:id])
    end

    def status_params
      params.require(:status).permit(:state, :message).tap do |w|
       # need to fix this to allow
        w[:state] = w[:state].to_i if w[:state]
      end
    end
end
