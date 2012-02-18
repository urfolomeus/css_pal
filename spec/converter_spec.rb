require 'spec_helper'

describe CssPal::Converter do
  subject { CssPal::Converter }

  it "uses UnitConverter if UnitConverter responds to given method" do
    CssPal::UnitConverter.should_receive(:pt_to_em).with("12")
    subject.convert("pt_to_em", "12")
  end

  it "uses ColorConverter if ColorConverter responds to given method" do
    CssPal::ColorConverter.should_receive(:to_hex).with("1,2,3")
    subject.convert("to_hex", "1,2,3")
  end

  it "raises error if no converter responds to given method" do
    expect {
      subject.convert("badger", "mushroom")
    }.to raise_error(NoMethodError, "I don't know how to 'badger'")
  end
end
