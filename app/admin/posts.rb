ActiveAdmin.register Post do
  permit_params :title, :description, :user_id

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :user_id
    column :created_at
    actions
  end

  filter :title
  filter :description
  filter :user
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :user
    end
    f.actions
  end

end
