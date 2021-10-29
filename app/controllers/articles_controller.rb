class ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search_terms]}&from=2021-10-29&sortBy=popularity&apiKey=#{Rails.application.credentials.news_api[:api_key]}")
    render json: response.parse(:json)
  end 
end