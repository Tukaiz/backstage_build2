require File.expand_path('../../spec_helper', __FILE__)
require APP_ROOT.join('config/environment')

describe HomeController do
  describe 'GET CORE #index' do
    before do
      get(:index)
    end

    it { should respond_with(:success) }
    it { expect(response.body).to eql('Core Home Controller index') }
  end
end
