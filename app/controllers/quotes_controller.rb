class QuotesController < ApplicationController
  def index
    @quotes = Quote.paginate(page: params[:page], per_page: 12)
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def quote_params
    params.require(:quote).permit(:text)
  end
end
