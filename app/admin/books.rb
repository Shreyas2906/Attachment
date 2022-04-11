ActiveAdmin.register Book do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :name, :description, :publish_date, :image
  index do
    column :title
    column :name
    column :description
    column :publish_date
    column "image" do |f|
      image_tag(f.image_url, height:"50", width: "50") rescue nil

    end
    actions
  end
 

  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :name, :description, :publish_date]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
