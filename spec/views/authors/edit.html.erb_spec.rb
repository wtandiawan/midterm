require 'spec_helper'

describe "authors/edit" do
  before(:each) do
    @author = assign(:author, stub_model(Author,
      :name => "MyString",
      :genres => "MyString"
    ))
  end

  it "renders the edit author form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", author_path(@author), "post" do
      assert_select "input#author_name[name=?]", "author[name]"
      assert_select "input#author_genres[name=?]", "author[genres]"
    end
  end
end
