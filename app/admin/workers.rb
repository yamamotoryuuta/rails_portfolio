ActiveAdmin.register Worker do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :tel, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :tel, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :name, :tel, :email, :password, :remember_created_at
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :tel
      f.input :email
      f.input :password
      f.input :remember_created_at
    end
    f.actions
  end


end
