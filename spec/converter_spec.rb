require 'spec_helper'

describe UnitConverter do
  describe "converting pt to em" do
    it "converts 6pt to 0.5em" do
      UnitConverter.pt_to_em(6).should == "0.5em"
    end

    it "converts 12pt to 1.0em" do
      UnitConverter.pt_to_em(12).should == "1em"
    end

    it "converts 14pt to 1.2em" do
      UnitConverter.pt_to_em(14).should == "1.2em"
    end
  end

  describe "converting em to %" do
    it "converts 0.5em to 50%" do
      UnitConverter.em_to_percent(0.5).should == "50%"
    end

    it "converts 1em to 100%" do
      UnitConverter.em_to_percent(1).should == "100%"
    end

    it "converts 2em to 200%" do
      UnitConverter.em_to_percent(2).should == "200%"
    end
  end

  describe "converting pt to %" do
    it "converts 6pt to 50%" do
      UnitConverter.pt_to_percent(6).should == "50%"
    end

    it "converts 12pt to 100%" do
      UnitConverter.pt_to_percent(12).should == "100%"
    end

    it "converts 24pt to 200%" do
      UnitConverter.pt_to_percent(24).should == "200%"
    end
  end

  describe "converting rgb to hex" do
    it "converts 255,255,255 to #ffffff" do
      UnitConverter.to_hex('255,255,255').should == "#ffffff"
    end

    it "converts 230,187,5 to #e6bb05" do
      UnitConverter.to_hex('230,187,5').should == "#e6bb05"
    end
  end
end
