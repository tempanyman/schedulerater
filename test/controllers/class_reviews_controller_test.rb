require 'test_helper'

class ClassReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_review = class_reviews(:one)
  end

  test "should get index" do
    get class_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_class_review_url
    assert_response :success
  end

  test "should create class_review" do
    assert_difference('ClassReview.count') do
      post class_reviews_url, params: { class_review: {  } }
    end

    assert_redirected_to class_review_url(ClassReview.last)
  end

  test "should show class_review" do
    get class_review_url(@class_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_review_url(@class_review)
    assert_response :success
  end

  test "should update class_review" do
    patch class_review_url(@class_review), params: { class_review: {  } }
    assert_redirected_to class_review_url(@class_review)
  end

  test "should destroy class_review" do
    assert_difference('ClassReview.count', -1) do
      delete class_review_url(@class_review)
    end

    assert_redirected_to class_reviews_url
  end
end
