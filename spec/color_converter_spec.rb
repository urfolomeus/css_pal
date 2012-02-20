require 'spec_helper'

describe CssPal::ColorConverter do
  subject { CssPal::ColorConverter }

  describe "converting rgb to hex" do
    it "converts 255,255,255 to #ffffff" do
      subject.new.to_hex('255,255,255').should == "#ffffff"
    end

    it "converts 230,187,5 to #e6bb05" do
      subject.new.to_hex('230,187,5').should == "#e6bb05"
    end
  end
end

