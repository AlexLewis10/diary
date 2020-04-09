require 'diary'

describe Diary do
  it "list the diary entries" do
    connection = PG.connect(dbname: 'diary_manager_test')

    connection.exec("INSERT INTO diary (entry) VALUES ('meeting');")
    connection.exec("INSERT INTO diary (entry) VALUES ('code review');")
    connection.exec("INSERT INTO diary (entry) VALUES ('lunchtime');")

    expect(Diary.all).to include "meeting"
    expect(Diary.all).to include "code review"
    expect(Diary.all).to include "lunchtime"
  end
end

describe '.create' do
  it 'creates a new diary entry' do
    Diary.create(diary: 'take a break')

    expect(Diary.all).to include 'take a break'
  end
end
