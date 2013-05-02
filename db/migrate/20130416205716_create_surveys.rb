class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.date :birthday
      t.string :shoe_size
      t.string :question_1
      t.string :question_2
      t.string :question_3
      t.date :question_4
      t.string :question_5

      t.timestamps
    end
  end
end
