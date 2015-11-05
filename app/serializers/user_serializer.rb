class UserSerializer < ActiveModel::Serializer

  attributes :id, :uid, :total_correct_flanker_guesses, :total_incorrect_flanker_guesses,
  :flanker_games_played, :total_correct_digit_symbol_guesses, :total_incorrect_digit_symbol_guesses,
  :digit_symbol_games_played, :total_memory_impairment_points, :memory_impairment_games_played, :transgender?,
  :race, :hispanic_or_latino?, :education_level, :married?, :employed?, :headcount_in_household,
  :total_pretax_household_income, :height, :weight, :writing_hand, :gender, :emory_patient?,
  :biological_mother_known?, :biological_father_known?, :has_biological_siblings?


end
