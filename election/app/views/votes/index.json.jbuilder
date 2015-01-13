json.array!(@votes) do |vote|
  json.extract! vote, :id, :vote, :valid_vote, :invalid_vote, :empty_vote, :other_vote, :issued_voting_card
  json.url vote_url(vote, format: :json)
end
