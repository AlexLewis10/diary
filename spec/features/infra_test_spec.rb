feature "infrastructure test" do
  scenario "test infrastructure works" do
    expect(page).to have_content "Hello world"
  end
end
