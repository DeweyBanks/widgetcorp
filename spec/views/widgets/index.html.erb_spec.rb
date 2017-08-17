require 'rails_helper'

RSpec.describe "widgets/index", type: :view do
  before(:each) do
    assign(:widgets, [
      Widget.create!(
        :title => "Title",
        :description => "MyText",
        :price => "9.99",
        :user => nil,
        :image => ""
      ),
      Widget.create!(
        :title => "Title",
        :description => "MyText",
        :price => "9.99",
        :user => nil,
        :image => ""
      )
    ])
  end

  it "renders a list of widgets" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
