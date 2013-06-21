require 'portfolio.rb'

describe Portfolio, "#portfolio_value" do
  it "should return value of portfolio calling 3 google stocks" do
    a_portfolio = Portfolio.new
    stock_one = Stock.new('GOOG', 1)
    stock_two = Stock.new('GOOG', 1)
    stock_three = Stock.new('GOOG', 1)
    a_portfolio.stocks << stock_one
    a_portfolio.stocks << stock_two
    a_portfolio.stocks << stock_three
    value = a_portfolio.portfolio_value
    value.should == 2642.79
  end
end