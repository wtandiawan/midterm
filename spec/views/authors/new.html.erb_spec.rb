require 'spec_helper'

describe "authors/new" do
  before(:each) do
    assign(:author, stub_model(Author,
      :name => "MyString",
      :genres => "MyString"
    ).as_new_record)
  end

  it "renders new author form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", authors_path, "post" do
      assert_select "input#author_name[name=?]", "author[name]"
      assert_select "input#author_genres[name=?]", "author[genres]"
    end
  end
end
