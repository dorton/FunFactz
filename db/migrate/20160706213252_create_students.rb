class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :fun_fact
      t.string :profile_image_id
      t.string :email

      t.timestamps null: false
    end
  end
end
