class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: %i[edit update show destroy]
  access all: [:show, :index, :angular], user: {except: [:sort, :destroy, :new, :create, :update, :edit]}, site_admin: :all


  # layout '' assigns a specific layout view template.
  layout 'portfolio'

  def index
    @portfolio_items = Portfolio.by_position
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    head :no_content
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
                                      :show_image,
                                      :thumbnail_image,
                                      technologies_attributes: [:id, :name, :_destroy]
                                     )
  end

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end
end
