class ClassReviewsController < ApplicationController
  before_action :set_class_review, only: [:show, :edit, :update, :destroy]

  # GET /class_reviews
  # GET /class_reviews.json
  def index
    @class_reviews = ClassReview.all
  end

  # GET /class_reviews/1
  # GET /class_reviews/1.json
  def show
  end

  # GET /class_reviews/new
  def new
    @class_review = ClassReview.new
    @course = Course.new
  end

  # GET /class_reviews/1/edit
  def edit
  end

  # POST /class_reviews
  # POST /class_reviews.json
  def create
    @class_review = ClassReview.new(class_review_params)

    respond_to do |format|
      if @class_review.save
        format.html { redirect_to @class_review, notice: 'Class review was successfully created.' }
        format.json { render :show, status: :created, location: @class_review }
      else
        format.html { render :new }
        format.json { render json: @class_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_reviews/1
  # PATCH/PUT /class_reviews/1.json
  def update
    respond_to do |format|
      if @class_review.update(class_review_params)
        format.html { redirect_to @class_review, notice: 'Class review was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_review }
      else
        format.html { render :edit }
        format.json { render json: @class_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_reviews/1
  # DELETE /class_reviews/1.json
  def destroy
    @class_review.destroy
    respond_to do |format|
      format.html { redirect_to class_reviews_url, notice: 'Class review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def course_params
    params.require(:name).permit(:department_id, class_reviews_attributes: [:id, :difficulty, :workload, :professor])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_review
      @class_review = ClassReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_review_params
      params.fetch(:class_review, {})
    end
end
