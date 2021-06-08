class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :quiz,        null: false
      t.string :response,  null: false
      t.text :description
      t.references :user,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
