class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.string :type
      t.datetime :date_planted
      t.datetime :date_harvested

      t.timestamps null: false
    end
  end
end
