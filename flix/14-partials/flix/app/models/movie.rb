class Movie < ApplicationRecord
  def self.huge_success
    where("total_gross > 500000000").order("total_gross")
  end

  def flop?
    total_gross.blank? || total_gross < 225_000_000
  end
end
