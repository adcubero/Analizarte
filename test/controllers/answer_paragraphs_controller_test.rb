require 'test_helper'

class AnswerParagraphsControllerTest < ActionController::TestCase
  setup do
    @answer_paragraph = answer_paragraphs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_paragraphs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_paragraph" do
    assert_difference('AnswerParagraph.count') do
      post :create, answer_paragraph: { evaluation_id: @answer_paragraph.evaluation_id, option_id: @answer_paragraph.option_id, sentence_id: @answer_paragraph.sentence_id }
    end

    assert_redirected_to answer_paragraph_path(assigns(:answer_paragraph))
  end

  test "should show answer_paragraph" do
    get :show, id: @answer_paragraph
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_paragraph
    assert_response :success
  end

  test "should update answer_paragraph" do
    patch :update, id: @answer_paragraph, answer_paragraph: { evaluation_id: @answer_paragraph.evaluation_id, option_id: @answer_paragraph.option_id, sentence_id: @answer_paragraph.sentence_id }
    assert_redirected_to answer_paragraph_path(assigns(:answer_paragraph))
  end

  test "should destroy answer_paragraph" do
    assert_difference('AnswerParagraph.count', -1) do
      delete :destroy, id: @answer_paragraph
    end

    assert_redirected_to answer_paragraphs_path
  end
end
