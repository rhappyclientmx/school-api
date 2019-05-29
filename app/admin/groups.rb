ActiveAdmin.register Group do
  permit_params :name, :school_id

  index do
    selectable_column
    id_column
    column :name
    column :school
    column :created_at
    column :updated_at

    actions
  end
end
