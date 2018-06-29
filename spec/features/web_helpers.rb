def sign_in_and_play
  visit '/'
  fill_in :player_1, :with => 'bibi'
  fill_in :player_2, :with => 'fred'
  click_button "Submit"
end
