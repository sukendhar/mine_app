class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.text :first_name
      t.text :last_name

      t.timestamps
    end
  end
end
