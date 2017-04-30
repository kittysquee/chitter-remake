require 'rails_helper'

RSpec.describe "meows/show", type: :view do
  before(:each) do
    @meow = assign(:meow, Meow.create!(
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
