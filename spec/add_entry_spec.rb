require 'add_entry'

describe Diary do
  let(:diary) { Diary.new }
  it "responds to add" do
    expect(diary).to respond_to :add
  end
end
