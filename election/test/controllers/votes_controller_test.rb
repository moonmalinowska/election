require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  setup do
    @vote = votes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote" do
    assert_difference('Vote.count') do
      post :create, vote: { empty_vote: @vote.empty_vote, invalid_vote: @vote.invalid_vote, issued_voting_card: @vote.issued_voting_card, other_vote: @vote.other_vote, valid_vote: @vote.valid_vote, vote: @vote.vote }
    end

    assert_redirected_to vote_path(assigns(:vote))
  end

  test "should show vote" do
    get :show, id: @vote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vote
    assert_response :success
  end

  test "should update vote" do
    patch :update, id: @vote, vote: { empty_vote: @vote.empty_vote, invalid_vote: @vote.invalid_vote, issued_voting_card: @vote.issued_voting_card, other_vote: @vote.other_vote, valid_vote: @vote.valid_vote, vote: @vote.vote }
    assert_redirected_to vote_path(assigns(:vote))
  end

  test "should destroy vote" do
    assert_difference('Vote.count', -1) do
      delete :destroy, id: @vote
    end

    assert_redirected_to votes_path
  end
end
