require 'rails_helper'

RSpec.describe "auctions/edit", type: :view do
  before(:each) do
    @auction = assign(:auction, Auction.create!(
      :title => "MyString",
      :details => "MyText",
      :price => 1
    ))
  end

  it "renders the edit auction form" do
    render

    assert_select "form[action=?][method=?]", auction_path(@auction), "post" do

      assert_select "input#auction_title[name=?]", "auction[title]"

      assert_select "textarea#auction_details[name=?]", "auction[details]"

      assert_select "input#auction_price[name=?]", "auction[price]"
    end
  end
end
