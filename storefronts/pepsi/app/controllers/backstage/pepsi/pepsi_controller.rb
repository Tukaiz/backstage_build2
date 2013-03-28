class Backstage::Pepsi::PepsiController < ApplicationController

  def index
    binding.pry
    render text: 'This is a pepsi specific products page!'
  end
end