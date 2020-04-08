feature "Can load the diary page" do
  scenario "Can load the diary page and it has content diary" do
    visit '/diary'
    expect(page).to have_content "diary"
  end
end
