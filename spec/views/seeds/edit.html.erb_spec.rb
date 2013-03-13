require 'spec_helper'

describe "seeds/edit" do
  before(:each) do
    @seed = assign(:seed, stub_model(Seed,
      :name => "MyString",
      :genus => "MyString"
    ))
  end

  it "renders the edit seed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", seed_path(@seed), "post" do
      assert_select "input#seed_name[name=?]", "seed[name]"
      assert_select "input#seed_genus[name=?]", "seed[genus]"
    end
  end
end
