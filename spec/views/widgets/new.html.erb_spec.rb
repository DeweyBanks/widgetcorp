require 'rails_helper'

RSpec.describe "widgets/new", type: :view do
  before(:each) do
    assign(:widget, Widget.new(
      :title => "MyString",
      :description => "MyText",
      :price => "9.99",
      :user => nil,
      :image => ""
    ))
  end

  it "renders new widget form" do
    render

    assert_select "form[action=?][method=?]", widgets_path, "post" do

      assert_select "input#widget_title[name=?]", "widget[title]"

      assert_select "textarea#widget_description[name=?]", "widget[description]"

      assert_select "input#widget_price[name=?]", "widget[price]"

      assert_select "input#widget_user_id[name=?]", "widget[user_id]"

      assert_select "input#widget_image[name=?]", "widget[image]"
    end
  end
end
