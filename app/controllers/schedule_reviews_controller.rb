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
  end

  # GET /schedule_reviews/1/edit
  def edit
  end

  # POST /schedule_reviews
  # POST /schedule_reviews.json
  def create
    @schedule_review = ScheduleReview.new(schedule_review_params)

    respond_to do |format|
      if @schedule_review.save
        format.html { redirect_to @schedule_review, notice: 'Schedule review was successfully created.' }
        format.json { render :show, status: :created, location: @schedule_review }
      else
        format.html { render :new }
        format.json { render json: @schedule_review.errors, status: :unprocessable_entity }
      end
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
      format.html { redirect_to schedule_reviews_url, notice: 'Schedule review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_review
      @schedule_review = ScheduleReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_review_params
      params.fetch(:schedule_review, {})
    end
end