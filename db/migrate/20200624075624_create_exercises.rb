class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.integer :user_id
      t.integer :note_id
      t.string :exercise_name
      t.float :weight
      t.float :weight_two
      t.float :weight_three
      t.float :weight_four
      t.float :weight_five
      t.float :weight_six
      t.float :weight_seven
      t.float :weight_eight
      t.float :weight_nine
      t.float :weight_ten
      t.integer :set
      t.integer :set_two
      t.integer :set_three
      t.integer :set_four
      t.integer :set_five
      t.integer :set_six
      t.integer :set_seven
      t.integer :set_eight
      t.integer :set_nine
      t.integer :set_ten
      t.integer :rep
      t.integer :rep_two
      t.integer :rep_three
      t.integer :rep_four
      t.integer :rep_five
      t.integer :rep_six
      t.integer :rep_seven
      t.integer :rep_eight
      t.integer :rep_nine
      t.integer :rep_ten
      t.text :exercise_note

      t.timestamps
    end
  end
end
