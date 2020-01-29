class CreateSavedResorts < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_resorts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :resort, null: false, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
