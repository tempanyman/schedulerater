class ScheduleReviewsController < ApplicationController
  before_action :set_schedule_review, only: [:show, :edit, :update, :destroy]

  # GET /schedule_reviews
  # GET /schedule_reviews.json
  def index
    @schedule_reviews = ScheduleReview.all
  end

  # GET /schedule_reviews/1
  # GET /schedule_reviews/1.json
  def show
  end

  # GET /schedule_reviews/new
  def new
    @schedule_review = ScheduleReview.new
    @class_review = ClassReview.new
  end

  # GET /schedule_reviews/1/edit
  def edit
  end

  # POST /schedule_reviews
  # POST /schedule_reviews.json
  def create
    @schedule_review = ScheduleReview.create( difficulty: params[:schedule_review][:difficulty], review: params[:schedule_review][:review], user: current_user)
    params[:schedule_review][:class_reviews_attributes].each do |num, class_rev|
      if not class_rev[:courses][:course_id].blank?
      ClassReview.create(difficulty: class_rev[:difficulty], workload: class_rev[:workload], professor: class_rev[:professor],
                         user: current_user, course: Course.find(class_rev[:courses][:course_id]), schedule_review: @schedule_review)
      end
    end
    puts @schedule_review.errors.full_messages.to_sentence
    if @schedule_review.errors.blank?
      redirect_to @schedule_review
    else
      flash[:error] = @schedule_review.errors.full_messages.to_sentence
      redirect_to new_schedule_review_path
    end
  end

  # PATCH/PUT /schedule_reviews/1
  # PATCH/PUT /schedule_reviews/1.json
  def update
    respond_to do |format|
      if @schedule_review.update(schedule_review_params)
        format.html { redirect_to @schedule_review, notice: 'Schedule review was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule_review }
      else
        format.html { render :edit }
        format.json { render json: @schedule_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_reviews/1
  # DELETE /schedule_reviews/1.json
  def destroy
    @schedule_review.destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user.id), notice: 'Schedule review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def class_review_params
    params.require(:difficulty).permit(:professor, schedule_review_attributes[:id, :review])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_review
      @schedule_review = ScheduleReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_review_params
      # params.fetch(:schedule_review, {})
      params.require(:schedule_review).permit(:user_id, :difficulty, :review)
    end
end
