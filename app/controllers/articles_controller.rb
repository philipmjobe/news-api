class ArticlesController < ApplicationController
  response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search_terms]}&from=2021-10-29&sortBy=popularity&apiKey=e")
  render json: response.parse(:json)
end