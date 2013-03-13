require 'spec_helper'

describe "seeds/new" do
  before(:each) do
    assign(:seed, stub_model(Seed,
      :name => "MyString",
      :genus => "MyString"
    ).as_new_record)
  end

  it "renders new seed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", seeds_path, "post" do
      assert_select "input#seed_name[name=?]", "seed[name]"
      assert_select "input#seed_genus[name=?]", "seed[genus]"
    end
  end
end
