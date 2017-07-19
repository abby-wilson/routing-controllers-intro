class PagesController < ApplicationController
 before_action :set_kitten_url, only: [:kitten, :kittens]
def welcome
  @header = "Welcome!"
  render :welcome
end

def about
  render :about
end

def contest
  render :contest
end

def kitten
end

def kittens 
end

def set_kitten_url
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
end

end
