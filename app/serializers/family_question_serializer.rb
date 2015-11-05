class FamilyQuestionSerializer < ActiveModel::Serializer

  attributes :id,
             :user_id,
             :relation,
             :birthyear,
             :still_living?,
             :diagnosed_with_MCI?,
             :diagnosed_with_AD?,
             :diagnosed_with_memory_loss_or_dementia?,
             :diagnosed_with_Parkinsons?,
             :ever_had_coronary_heart_disease_or_heart_attack?,
             :diagnosed_with_diabetes?,
             :diagnosed_with_hypertension?,
             :diagnosed_with_high_cholesterol_or_triglycerides?,
             :diagnosed_with_stroke_or_TIA?

end
