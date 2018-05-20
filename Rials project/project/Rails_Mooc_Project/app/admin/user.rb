ActiveAdmin.register User do

    permit_params :email, :password, :password_confirmation, :name, :gender, :dateofbirth
      index do
        selectable_column
        id_column
        column :gender
        column :password
        column :dataofbirth
        column :name
        column :email
        column :image
        column :created_at
        actions
      end
    
  end