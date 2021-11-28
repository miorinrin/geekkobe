class StudentsController < ApplicationController
    def index
        @students = student.all
    end
  
    def new
        @student = student.new
    end

    def create
        student = student.new(tweet_params)
        if student.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      private
      def student_params
        params.require(:student).permit(:name, :profile, :mentor, :grade)
      end

end
