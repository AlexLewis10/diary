feature "infrastructure test" do
  scenario "test infrastructure works" do
    visit '/'
    expect(page).to have_content "Hello world"
  end
end

feature "Can load the diary page" do
  scenario "Can load the diary page and it has content diary" do
    visit '/diary'
    expect(page).to have_content "diary"
  end
end
