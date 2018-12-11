class DropCourseInformation < ActiveRecord::Migration[5.2]
  def change
    drop_table :course_informations
  end
end
