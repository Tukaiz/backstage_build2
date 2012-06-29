class Backstage::Pepsi::PepsiController < ApplicationController

  def index
    render text: 'This is a pepsi specific products page!'
  end
end