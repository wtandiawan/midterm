require 'spec_helper'

describe "authors/show" do
  before(:each) do
    @author = assign(:author, stub_model(Author,
      :name => "Name",
      :genres => "Genres"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Genres/)
  end
end
