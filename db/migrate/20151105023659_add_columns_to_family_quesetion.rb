class AddColumnsToFamilyQuesetion < ActiveRecord::Migration
  def change
    add_column :family_questions, :relation, :string
    add_column :family_questions, :birthyear, :integer
    add_column :family_questions, :still_living?, :string
    add_column :family_questions, :diagnosed_with_MCI?, :string
    add_column :family_questions, :diagnosed_with_AD?, :string
    add_column :family_questions, :diagnosed_with_memory_loss_or_dementia?, :string
    add_column :family_questions, :diagnosed_with_Parkinsons?, :string
    add_column :family_questions, :ever_had_coronary_heart_disease_or_heart_attack?, :string
    add_column :family_questions, :diagnosed_with_diabetes?, :string
    add_column :family_questions, :diagnosed_with_hypertension?, :string
    add_column :family_questions, :diagnosed_with_high_cholesterol_or_triglycerides?, :string
    add_column :family_questions, :diagnosed_with_stroke_or_TIA?, :string
  end
end
