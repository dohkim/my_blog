class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
     rename_column :portfolios, :main_iamge, :main_image
  end
end
