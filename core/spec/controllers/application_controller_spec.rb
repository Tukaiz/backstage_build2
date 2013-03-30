require File.expand_path('../../spec_helper', __FILE__)
require APP_ROOT.join('config/environment')
require Backstage::Core.root.join("app/controllers/application_controller")

describe ApplicationController do

  let(:session) { Hash.new }


  controller do
    before_filter :require_storefront
    def index
      render :text => "Hello"
    end
  end

  describe '#current_storefront' do
    it 'returns the storefront from the session' do
      session.stub(:current_storefront).and_return('belly')
      expect(session.current_storefront).to eq('belly')
    end
  end

  describe '#require_storefront' do
    subject { get :index }
    it "redirects to login" do
      expect(subject).to redirect_to(new_session_path)
    end
  end

end
