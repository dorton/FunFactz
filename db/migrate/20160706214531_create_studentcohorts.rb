class CreateStudentcohorts < ActiveRecord::Migration
  def change
    create_table :studentcohorts do |t|
      t.references :student, index: true, foreign_key: true
      t.references :cohort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
