require 'add_entry'
#look up how to do a test on the initialize..think I did it with faye yesterday
describe Entry do
  let(:new_entry) { Entry.new("Meeting") }
  it "responds to add" do
    expect(new_entry).to respond_to(:add)#.with(1).argument
  end
end
