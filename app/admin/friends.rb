ActiveAdmin.register Friend do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :first_name, :last_name, :email, :phone, :instagram, :user_id
  
  show title: :first_name
  form do |f|
    f.inputs do
      f.semantic_errors
        
      #f.select :email, User.all.map{|u| [u.email, u.email][u.id, u.id]}
      f.select :email, User.order(:email).pluck(:id)
       f.select :email, options_for_select(User.all.map{|u| [u.email, u.id.to_s]})

      f.input :user_id
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone
      f.input :instagram
    end
    f.actions
  end
end