feature "infrastructure test" do
  scenario "test infrastructure works" do
    visit '/'
    expect(page).to have_content "Hello world"
  end
end
