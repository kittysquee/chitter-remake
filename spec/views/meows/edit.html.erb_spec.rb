require 'rails_helper'

RSpec.describe "meows/edit", type: :view do
  before(:each) do
    @meow = assign(:meow, Meow.create!(
      :message => "MyText"
    ))
  end

  it "renders the edit meow form" do
    render

    assert_select "form[action=?][method=?]", meow_path(@meow), "post" do

      assert_select "textarea#meow_message[name=?]", "meow[message]"
    end
  end
end
