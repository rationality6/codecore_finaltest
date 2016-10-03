require 'rails_helper'

RSpec.describe "auctions/new", type: :view do
  before(:each) do
    assign(:auction, Auction.new(
      :title => "MyString",
      :details => "MyText",
      :price => 1
    ))
  end

  it "renders new auction form" do
    render

    assert_select "form[action=?][method=?]", auctions_path, "post" do

      assert_select "input#auction_title[name=?]", "auction[title]"

      assert_select "textarea#auction_details[name=?]", "auction[details]"

      assert_select "input#auction_price[name=?]", "auction[price]"
    end
  end
end
