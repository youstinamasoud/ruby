class AddFieldsToLectures < ActiveRecord::Migration[5.1]
  def change
    add_column :lectures , :attachment , :string
    add_column :lectures , :course_id , :integer
    add_column :lectures , :user_id , :integer
  end
end
