require 'add_entry'

describe Entry do
  let(:new_entry) { Entry.new }
  it "responds to add" do
    expect(new_entry).to respond_to :add
  end
end
