require 'rails_helper'

RSpec.describe "widgets/edit", type: :view do
  before(:each) do
    @widget = assign(:widget, Widget.create!(
      :title => "MyString",
      :description => "MyText",
      :price => "9.99",
      :user => nil,
      :image => ""
    ))
  end

  it "renders the edit widget form" do
    render

    assert_select "form[action=?][method=?]", widget_path(@widget), "post" do

      assert_select "input#widget_title[name=?]", "widget[title]"

      assert_select "textarea#widget_description[name=?]", "widget[description]"

      assert_select "input#widget_price[name=?]", "widget[price]"

      assert_select "input#widget_user_id[name=?]", "widget[user_id]"

      assert_select "input#widget_image[name=?]", "widget[image]"
    end
  end
end
