require 'spec_helper'

describe CssPal::UnitConverter do
  subject { CssPal::UnitConverter }
  describe "converting pt to em" do
    it "converts 6pt to 0.5em" do
      subject.pt_to_em(6).should == "0.5em"
    end

    it "converts 12pt to 1.0em" do
      subject.pt_to_em(12).should == "1em"
    end

    it "converts 14pt to 1.2em" do
      subject.pt_to_em(14).should == "1.2em"
    end
  end

  describe "converting em to %" do
    it "converts 0.5em to 50%" do
      subject.em_to_percent(0.5).should == "50%"
    end

    it "converts 1em to 100%" do
      subject.em_to_percent(1).should == "100%"
    end

    it "converts 2em to 200%" do
      subject.em_to_percent(2).should == "200%"
    end
  end

  describe "converting pt to %" do
    it "converts 6pt to 50%" do
      subject.pt_to_percent(6).should == "50%"
    end

    it "converts 12pt to 100%" do
      subject.pt_to_percent(12).should == "100%"
    end

    it "converts 24pt to 200%" do
      subject.pt_to_percent(24).should == "200%"
    end
  end
end

