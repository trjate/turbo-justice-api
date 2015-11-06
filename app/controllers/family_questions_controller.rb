class FamilyQuestionsController < ApplicationController

  def index
    @family_questions = FamilyQuestion.all
    render json: @family_questions
  end

end
