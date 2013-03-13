require 'spec_helper'

describe "seeds/index" do
  before(:each) do
    assign(:seeds, [
      stub_model(Seed,
        :name => "Name",
        :genus => "Genus"
      ),
      stub_model(Seed,
        :name => "Name",
        :genus => "Genus"
      )
    ])
  end

  it "renders a list of seeds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Genus".to_s, :count => 2
  end
end
