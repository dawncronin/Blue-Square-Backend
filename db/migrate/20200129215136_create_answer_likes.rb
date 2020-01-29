class CreateAnswerLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
