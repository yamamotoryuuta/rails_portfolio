ActiveAdmin.register Dispatch do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :delivery_day, :delivery_time, :delivery_target, :truck_num, :remarks, :worker_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:delivery_day, :delivery_time, :delivery_target, :truck_num, :remarks, :worker_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  active_admin_importable do |model, hash|
    model.create(
        delivery_day: hash[:delivery_day], 
        delivery_time: hash[:delivery_time],
        delivery_target: hash[:delivery_target],
        truck_num: hash[:truck_num],
        remarks: hash[:remarks],
        worker_id: hash[:worker_id]
      )
    
  end
  
end
