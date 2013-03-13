class Backstage::Belly::CoolController <  Backstage::Belly::ApplicationController

  def index
    render text: 'Belly is cool because it has this cool controller instead of home!'
  end
end
