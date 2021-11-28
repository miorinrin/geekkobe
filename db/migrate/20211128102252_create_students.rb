class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.text :name
      t.text :profile
      t.text :mentor
      t.integer :grade

      t.timestamps
    end
  end
end
