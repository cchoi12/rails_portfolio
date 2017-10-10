class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: %i[show edit update destroy]

  def index
    @portfolio_items = Portfolio.all
  end

  def angular
    @portfolio_items = Portfolio.angular_portfolio_items
  end

  def rails_portfolio
    @portfolio_items = Portfolio.ruby_on_rails_portfolio_items
  end

  def show
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
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
  end

  def update
    if @portfolio_item.update(portfolio_params)
      redirect_to portfolios_path
    else
      redirect_to portfolios_path, notice: 'Unsuccessful dude'
    end
  end

  def destroy
    # Destroy the record
    @portfolio_item.destroy

    # Redirect after the delete
    if @portfolio_item.destroy
      redirect_to portfolios_path, notice: 'Portfolio has been deleted'
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name]
                                     )
  end

  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end
end
