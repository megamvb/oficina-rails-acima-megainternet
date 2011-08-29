class WelcomeController < ApplicationController
  
  def index
    @client = Client.new
    @client.tickets.build
  end
end
