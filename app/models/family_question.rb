class FamilyQuestion < ActiveRecord::Base
  belongs_to :user

  def update_family_data!(params)
    self.update(relation:
                params[:relation],

                birthyear:
                params[:birthyear],

                still_living?:
                params[:still_living?],

                diagnosed_with_MCI?:
                params[:diagnosed_with_MCI?],

                diagnosed_with_AD?:
                params[:diagnosed_with_AD?],

                diagnosed_with_memory_loss_or_dementia?:
                params[:diagnosed_with_memory_loss_or_dementia?],

                diagnosed_with_Parkinsons?:
                params[:diagnosed_with_Parkinsons?],

                ever_had_coronary_heart_disease_or_heart_attack?:
                params[:ever_had_coronary_heart_disease_or_heart_attack?],

                diagnosed_with_diabetes?:
                params[:diagnosed_with_diabetes?],

                diagnosed_with_hypertension?:
                params[:diagnosed_with_hypertension?],

                diagnosed_with_high_cholesterol_or_triglycerides?:
                params[:diagnosed_with_high_cholesterol_or_triglycerides?],

                diagnosed_with_stroke_or_TIA?:
                params[:diagnosed_with_stroke_or_TIA?])

  end


end
