feature "Can load the diary page" do
  scenario "Can load the diary page and it has content diary" do
    visit '/diary/index'
    expect(page).to have_content "meeting"
    expect(page).to have_content "code review"
    expect(page).to have_content "lunchtime"
  end
end
