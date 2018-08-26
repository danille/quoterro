Given("I have populated my list with several quotes") do
  FactoryBot.create(:quote,
                    text: "If you tell the truth, you don't have to remember anything.")
  FactoryBot.create(:quote,
                    text: "I am so clever that sometimes I don't understand a single word of what I am saying.")
  FactoryBot.create(:quote,
                    text: "Be yourself; everyone else is already taken.")
  FactoryBot.create(:quote,
                    text: "Good friends, good books, and a sleepy conscience: this is the ideal life.")
  FactoryBot.create(:quote,
                    text: "A day without sunshine is like, you know, night.")

end

When("I visit the homepage") do
  visit root_path
end

Then("I should see list of my quotes") do
  expect(page).to have_content("A day without sunshine is like, you know, night.")
  expect(page).to have_content("I am so clever that sometimes I don't understand a single word of what I am saying.")
  expect(page).to have_content("Good friends, good books, and a sleepy conscience: this is the ideal life.")
  expect(page).to have_content("If you tell the truth, you don't have to remember anything.")
  expect(page).to have_content("Be yourself; everyone else is already taken.")
end

When("I click Add quote link") do
  click_link "Add new quote"
end

When("I submit filled in new quote form") do
  fill_in('id-quote-text', with: "This is a brand new quote!")
  click_button "Create Quote"
end

Then("I should see a new quote in the listing") do
  expect(page).to have_content("This is a brand new quote!")
end
