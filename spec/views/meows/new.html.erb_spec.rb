require 'rails_helper'

RSpec.describe "meows/new", type: :view do
  before(:each) do
    assign(:meow, Meow.new(
      :message => "MyText"
    ))
  end

  it "renders new meow form" do
    render

    assert_select "form[action=?][method=?]", meows_path, "post" do

      assert_select "textarea#meow_message[name=?]", "meow[message]"
    end
  end
end
