class Dispatch < ApplicationRecord
  belongs_to :worker

  def to_param
    delivery_day
  end
end
