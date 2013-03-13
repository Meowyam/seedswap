require 'spec_helper'

describe "seeds/show" do
  before(:each) do
    @seed = assign(:seed, stub_model(Seed,
      :name => "Name",
      :genus => "Genus"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Genus/)
  end
end
