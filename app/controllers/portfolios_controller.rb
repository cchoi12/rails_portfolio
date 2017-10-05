class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    if @portfolio_item.save
      redirect_to portfolios_path, notice: 'Your Portfolio has been created!'
    else
      redirect_to new_portfolio_path, alert: 'Unsuccessful'
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])

    if @portfolio_item.update(portfolio_params)
      redirect_to portfolios_path
    else
      redirect_to portfolios_path, notice: 'Unsuccessful dude'
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    # Perform the look up
    @portfolio_item = Portfolio.find(params[:id])

    # Destroy the record
    @portfolio_item.destroy

    # Redirect after the delete
    if @portfolio_item.destroy
      redirect_to portfolios_path, notice: 'Portfolio has been deleted'
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
