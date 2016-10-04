class Auction < ApplicationRecord
  # before_save :parse_date
  has_many :bids, dependent: :destroy
  belongs_to :user

  def parse_date
    self.endon = Date.parse(self.endon.to_s)
  end
end
