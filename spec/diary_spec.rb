require 'diary'

describe Diary do
  it "list the diary entries" do
    #connection = PG.connect :dbname => 'diary_manager', :user => 'macbookpro'
    #result = connection.exec ("SELECT * FROM entry;")


    expect(Diary.all).to include "meeting"
    expect(Diary.all).to include "code review"
    expect(Diary.all).to include "lunchtime"
  end
end
