require 'rails_helper'

RSpec.describe "meows/index", type: :view do
  before(:each) do
    assign(:meows, [
      Meow.create!(
        :message => "MyText"
      ),
      Meow.create!(
        :message => "MyText"
      )
    ])
  end

  it "renders a list of meows" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
