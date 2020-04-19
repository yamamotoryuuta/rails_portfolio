class WorkersController < ApplicationController
  def index
    @workers = Worker.all
  end

  def show
    @worker_dispatches = Worker.find(current_worker.id)
    @worker_dispatch = @worker_dispatches.dispatches.find_by(delivery_day: "2020-04-21")
    #find_by(create_at: Date.today)
    #仮に値をdelivery_day: "2020-04-22"にしてあります
  end
end