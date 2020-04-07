require 'add_entry'

describe Entry do
  it "responds to add" do
    expect(subject).to respond_to(:add).with(1).argument
  end
end
