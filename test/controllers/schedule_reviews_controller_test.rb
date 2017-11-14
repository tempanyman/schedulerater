require 'test_helper'

class ScheduleReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule_review = schedule_reviews(:one)
  end

  test "should get index" do
    get schedule_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_schedule_review_url
    assert_response :success
  end

  test "should create schedule_review" do
    assert_difference('ScheduleReview.count') do
      post schedule_reviews_url, params: { schedule_review: {  } }
    end

    assert_redirected_to schedule_review_url(ScheduleReview.last)
  end

  test "should show schedule_review" do
    get schedule_review_url(@schedule_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_schedule_review_url(@schedule_review)
    assert_response :success
  end

  test "should update schedule_review" do
    patch schedule_review_url(@schedule_review), params: { schedule_review: {  } }
    assert_redirected_to schedule_review_url(@schedule_review)
  end

  test "should destroy schedule_review" do
    assert_difference('ScheduleReview.count', -1) do
      delete schedule_review_url(@schedule_review)
    end

    assert_redirected_to schedule_reviews_url
  end
end
