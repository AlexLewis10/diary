feature "Viewing diary" do
  scenario "Can load the diary page and it has diary entries" do
    connection = PG.connect(dbname: 'diary_manager_test')

    connection.exec("INSERT INTO diary (diary) VALUES ('meeting');")
    connection.exec("INSERT INTO diary (diary) VALUES ('code review');")
    connection.exec("INSERT INTO diary (diary) VALUES ('lunchtime');")

    visit '/diary/index'
    expect(page).to have_content "meeting"
    expect(page).to have_content "code review"
    expect(page).to have_content "lunchtime"
  end
end
