ActiveAdmin.register Weather do
  permit_params :name, :description, :humidity, :temp

end