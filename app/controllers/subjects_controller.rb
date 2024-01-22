class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save 
      render json: @subject, status: 200
    else
      render json: "error"
    end
  end



  private 
  def subject_params
    params.permit(:name, :type)
  end
end
