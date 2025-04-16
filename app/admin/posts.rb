ActiveAdmin.register Post do
  permit_params :title, :content

  filter :title
  filter :content

  index do
    selectable_column
    id_column
    column :title
    column :content
    actions
  end
end
