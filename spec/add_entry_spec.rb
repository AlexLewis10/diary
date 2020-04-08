require 'diary'

describe Diary do
  it "list the diary entries" do
    expect(Diary.all).to include "meeting"
    expect(Diary.all).to include "code review"
    expect(Diary.all).to include "lunchtime"
  end
end
