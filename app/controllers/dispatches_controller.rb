class DispatchesController < ApplicationController
  def index
      @dispatch_days = Dispatch.select(:delivery_day).group(:delivery_day).order(delivery_day: :desc)
  end

  def show
    @detail_dispatches = Dispatch.where(delivery_day: params[:delivery_day])
  end
end