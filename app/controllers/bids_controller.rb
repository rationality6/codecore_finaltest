class BidsController < ApplicationController
  def create
    @bid = Bid.new params.require(:bid).permit(:bidprice)
    @auction = Auction.find params[:auction_id]
    @bid.auction = @auction
    if @bid.save
      redirect_to auction_path(@auction), notice: "Bid created!"
    else
      flash[:alert] = "Please fix errors below"
      render "/auctions/show"
    end
  end


  def destroy
    q = Question.find params[:question_id]
    a = Answer.find params[:id]
    a.destroy
    redirect_to question_path(q), notice: "Answer deleted"
  end
end
