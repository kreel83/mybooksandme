require 'json'
require 'open-uri'

class SearchsController < ApplicationController
  def index
      query = params[:search]
      query = 'les+miserables' if !params[:search]

      url = "https://www.googleapis.com/books/v1/volumes?q=#{query}&projection=lite&langRestrict=fr"
      f = open(url).read
      fj = JSON.parse(f)
      @fj = fj['items']
  end

  def store
    session['search'] = params[:dataId]
    raise
  end
end
