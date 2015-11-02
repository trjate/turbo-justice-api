class CreateFamilyQuestions < ActiveRecord::Migration
  def change
    create_table :family_questions do |t|

      t.timestamps null: false
    end
  end
end
