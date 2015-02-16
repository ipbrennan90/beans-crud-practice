class ChangeColumnNameBeans < ActiveRecord::Migration
  def change
    rename_column :beans, :type, :species
  end
end
