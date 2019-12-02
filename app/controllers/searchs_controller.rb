require 'json'
require 'open-uri'


class SearchsController < ApplicationController
  def index
    title = ERB::Util.url_encode(params[:title])
    author = ERB::Util.url_encode(params[:author])


    title = 'les+miserables' if !params[:title]
    author = '' if !params[:author]


    titleText = "q=#{title}"
    authorText = "+inauthor:#{author}" if author != ''
    subjectText = "+subject:Fiction"

    url = "https://www.googleapis.com/books/v1/volumes?#{titleText}#{authorText}#{subjectText}&langRestrict=fr&maxResults=40"


    f = open(url).read
    fj = JSON.parse(f)
    @fj = fj['items']
    last = ''
    @tab = []
    @fj.each do |item|
      @tab << item  if last != item['volumeInfo']['title']
      last = item['volumeInfo']['title']
    end

    @fj = @tab

  end

  def store
    session['search'] = params[:dataId]
  end
end
