ActiveAdmin.register User do

  
  permit_params :email, :first_name, :last_name, :password, :password_confirmation, friends_ids: []
form do |f|
  f.inputs do
    f.semantic_errors
    f.input :first_name
    f.input :last_name
    f.input :email
    f.input :password
    f.input :password_confirmation
  end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
end

show title: :first_name  do
  h3 'This user has '+ pluralize(user.friends.count, 'friend')
  user.friends.each do |friend|
    h1 friend.first_name + friend.last_name
    h2 link_to "View this friend who was created at: #{friend.created_at}", admin_friend_path(friend)
   end
             
 end
end
