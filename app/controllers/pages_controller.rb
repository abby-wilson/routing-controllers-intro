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
  flash[:notice] = "Sorry, the contest has ended"
  redirect_to welcome_path
end

def kitten
end

def kittens
end

def set_kitten_url
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
end

def secrets
  magic_word = "cats"
  if params[:magic_word] == magic_word
  else
    flash[:notice] = "You do not have the correct credentials to enter this page"
    redirect_to welcome_path
  end

end

end
