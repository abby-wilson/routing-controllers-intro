class PagesController < ApplicationController

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

end
