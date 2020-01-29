class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :text
      t.references :user, null: false, foreign_key: true
      t.references :resort, null: false, foreign_key: true

      t.timestamps
    end
  end
end
