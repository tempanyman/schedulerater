class AddDepartmentToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :department, :department_id
  end
end
