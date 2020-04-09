require 'diary'

describe Diary do
  it "list the diary entries" do
    connection = PG.connect(dbname: 'diary_manager_test')

    connection.exec("INSERT INTO diary (diary) VALUES ('meeting');")
    connection.exec("INSERT INTO diary (diary) VALUES ('code review');")
    connection.exec("INSERT INTO diary (diary) VALUES ('lunchtime');")

    expect(Diary.all).to include "meeting"
    expect(Diary.all).to include "code review"
    expect(Diary.all).to include "lunchtime"
  end
end
