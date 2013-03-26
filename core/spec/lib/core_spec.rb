require File.expand_path('../../spec_helper', __FILE__)

describe Backstage, no_database_cleaner: true do
  before(:all) { module Backstage::CoolStorefront end }

  describe '#storefronts' do
    before(:each) { Backstage.class_variable_set(:@@storefronts, [Backstage::CoolStorefront]) }

    specify { expect(Backstage.storefronts).to be_a(Array) }

    it 'should contain modules representing registered storefronts' do
      expect(Backstage.storefronts).to be_all { |s| s.is_a?(Module) }
    end
  end

  describe '#register_storefront' do
    before(:each) { Backstage.storefronts.clear }

    it "should add the storefront's module to the array of registered storefronts" do
      Backstage.register_storefront(Backstage::CoolStorefront)

      expect(Backstage.storefronts).to include(Backstage::CoolStorefront)
    end

    it 'should not register a storefront twice' do
      Backstage.register_storefront(Backstage::CoolStorefront)
      Backstage.register_storefront(Backstage::CoolStorefront)

      expect(Backstage.storefronts).to have(1).item
    end
  end

  describe '#storefront_registered?' do

    context 'with Backstage::CoolStorefront registered' do
      before(:each) { Backstage.register_storefront(Backstage::CoolStorefront) }

      specify do
        expect(Backstage.storefront_registered?(Backstage::CoolStorefront)).to be_true
      end
    end

    context 'with no storefronts registered' do
      before(:each) { subject.storefronts.clear }

      specify do
        expect(Backstage.storefront_registered?(Backstage::CoolStorefront)).to be_false
      end
    end
  end


  describe '#register_assets' do
    before(:each) { Backstage.storefronts.clear }

    it "should add mainifests to the rails config for production precompile" do
      Backstage.register_storefront(Backstage::CoolStorefront)
      expect(Rails.application.config.assets.precompile).to include("application_Backstage::CoolStorefront.css")
    end

  end

end
