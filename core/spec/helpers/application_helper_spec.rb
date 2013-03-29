require File.expand_path('../../spec_helper', __FILE__)

describe Backstage::Core::Helpers::ApplicationHelper do

  describe 'core_helper' do
    it 'should display ' do
      expect(core_helper).to eq 'This is a CORE application helper'
    end
  end

  describe 'login_for' do
    context 'When not Logged in' do
      it 'display Login' do
        expect( login_for nil ).to have_link('Login')
      end

      it 'has path of new_session' do
        expect( login_for nil ).to have_selector('a[href="/sessions/new"]', text: 'Login')
      end
    end

    context 'when Logged in' do
      it 'should display Lgout' do
        expect( login_for 'belly' ).to have_link('Logout')
      end

      it 'should display login link when not logged in' do
        expect( login_for 'belly' ).to have_selector('a[href="/sessions/belly"]', text: 'Logout')
      end

    end

  end

end
