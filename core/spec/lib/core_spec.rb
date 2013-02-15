require File.expand_path('../../spec_helper', __FILE__)

describe Backstage do
  before(:all) { module Backstage::CoolStorefront end }

  describe '#storefronts' do
    before(:each) { Backstage.class_variable_set(:@@storefronts, [Backstage::CoolStorefront]) }

    specify { subject.storefronts.should be_a(Array) }

    it 'should contain modules representing registered storefronts' do
      subject.storefronts.should be_all { |s| s.is_a?(Module) }
    end
  end

  describe '#register_storefront' do
    before(:each) { subject.storefronts.clear }

    it "should add the storefront's module to the array of registered storefronts" do
      subject.register_storefront(Backstage::CoolStorefront)

      subject.storefronts.should include(Backstage::CoolStorefront)
    end

    it 'should not register a storefront twice' do
      subject.register_storefront(Backstage::CoolStorefront)
      subject.register_storefront(Backstage::CoolStorefront)

      subject.storefronts.should have(1).item
    end
  end

  describe '#storefront_registered?' do

    context 'with Backstage::CoolStorefront registered' do
      before(:each) { subject.register_storefront(Backstage::CoolStorefront) }

      specify { subject.storefront_registered?(Backstage::CoolStorefront).should be_true }
    end

    context 'with no storefronts registered' do
      before(:each) { subject.storefronts.clear }

      specify { subject.storefront_registered?(Backstage::CoolStorefront).should be_false }
    end
  end
end
