
feature "Testing names entry" do
  scenario "Test if players can fill in their names" do
    sign_in_and_play
    expect(page).to have_content("Let the games begin bibi & fred")
  end
end
feature "Hit points" do
  scenario "Test if showing players hit points" do
    sign_in_and_play
    expect(page).to have_content("bibi: HP 100/100")
   end
  end
feature "ATTAAAACK" do
  scenario "Player 1 can attack Player 2 and get confirmation" do
    sign_in_and_play
    click_button('ATTACAAACK')
    expect(page).to have_content "bibi attacked fred"
    end

  end
