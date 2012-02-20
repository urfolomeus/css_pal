require 'spec_helper'

describe CssPal::Converter do
  subject { CssPal::Converter }

  it "uses UnitConverter if UnitConverter responds to given method" do
    uconv = stub("unit converter")
    CssPal::UnitConverter.should_receive(:new).and_return(uconv)
    uconv.should_receive(:pt_to_em).with("12")
    subject.convert("pt_to_em", "12")
  end

  it "uses ColorConverter if ColorConverter responds to given method" do
    cconv = stub("color converter")
    CssPal::ColorConverter.should_receive(:new).and_return(cconv)
    cconv.should_receive(:to_hex).with("1,2,3")
    subject.convert("to_hex", "1,2,3")
  end

  it "raises error if no converter responds to given method" do
    expect {
      subject.convert("badger", "mushroom")
    }.to raise_error(NoMethodError, "I don't know how to 'badger'")
  end

  context "when given a precision" do
    it "passes the precision on to the selected converter" do
      uconv = stub("unit converter")
      CssPal::UnitConverter.should_receive(:new).with(precision: 3).and_return(uconv)
      uconv.should_receive(:pt_to_em).with("12")
      subject.convert("pt_to_em", "12", {precision: 3})
    end
  end
end
