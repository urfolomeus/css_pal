require 'spec_helper'

describe CssPal::UnitConverter do
  subject { CssPal::UnitConverter }

  describe "converting pt to em" do
    context "with no options" do
      it "converts 6pt to 0.5em" do
        subject.new.pt_to_em(6).should == "0.5em"
      end

      it "converts 12pt to 1.0em" do
        subject.new.pt_to_em(12).should == "1em"
      end

      it "converts 14pt to 1.2em" do
        subject.new.pt_to_em(14).should == "1.2em"
      end
    end

    context "with an optional precision" do
      it "converts 14pt to 1.167em when precision is 3" do
        subject.new(precision: 3).pt_to_em(14).should == "1.167em"
      end
    end
  end

  describe "converting px to em" do
    it "converts 8px to 0.5em" do
      subject.new.px_to_em(8).should == "0.5em"
    end

    it "converts 16px to 1.0em" do
      subject.new.px_to_em(16).should == "1em"
    end

    it "converts 18px to 1.125em" do
      subject.new.px_to_em(18).should == "1.1em"
    end
  end

  describe "converting em to %" do
    it "converts 0.5em to 50%" do
      subject.new.em_to_percent(0.5).should == "50%"
    end

    it "converts 1em to 100%" do
      subject.new.em_to_percent(1).should == "100%"
    end

    it "converts 2em to 200%" do
      subject.new.em_to_percent(2).should == "200%"
    end
  end

  describe "converting pt to %" do
    it "converts 6pt to 50%" do
      subject.new.pt_to_percent(6).should == "50%"
    end

    it "converts 12pt to 100%" do
      subject.new.pt_to_percent(12).should == "100%"
    end

    it "converts 24pt to 200%" do
      subject.new.pt_to_percent(24).should == "200%"
    end
  end
end

