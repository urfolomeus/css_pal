require 'spec_helper'

describe Converter do
  describe "converting pt to em" do
    it "converts 6pt to 0.5em" do
      Converter.pt_to_em(6).should == "0.5em"
    end

    it "converts 12pt to 1.0em" do
      Converter.pt_to_em(12).should == "1.0em"
    end

    it "converts 14pt to 1.2em" do
      Converter.pt_to_em(14).should == "1.2em"
    end
  end

  describe "converting em to %" do
    it "converts 2em to 200%" do
      Converter.em_to_percent(2).should == "200%"
    end
  end
end
