class QuotesController < ApplicationController
  def index
    @quotes = Quote.paginate(page: params[:page], per_page: 12)
  end
end
