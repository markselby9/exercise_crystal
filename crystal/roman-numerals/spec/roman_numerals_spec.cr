require "spec"
require "../src/*"

describe "Int" do
  describe "#to_roman" do
    it "changes 1 to I" do
      1.to_roman.should eq "I"
    end
    it "changes 2 to II" do
      2.to_roman.should eq "II"
    end
    it "changes 3 to III" do
      3.to_roman.should eq "III"
    end
    it "changes 4 to IV" do
      4.to_roman.should eq "IV"
    end
    it "changes 5 to V" do
      5.to_roman.should eq "V"
    end
    it "changes 6 to VI" do
      6.to_roman.should eq "VI"
    end
    it "changes 9 to IX" do
      9.to_roman.should eq "IX"
    end
    it "changes 27 to XXVII" do
      27.to_roman.should eq "XXVII"
    end
    it "changes 48 to XLVIII" do
      48.to_roman.should eq "XLVIII"
    end
    it "changes 59 to LIX" do
      59.to_roman.should eq "LIX"
    end
    it "changes 93 to XCIII" do
      93.to_roman.should eq "XCIII"
    end
    it "changes 141 to CXLI" do
      141.to_roman.should eq "CXLI"
    end
    it "changes 163 to CLXIII" do
      163.to_roman.should eq "CLXIII"
    end
    it "changes 402 to CDII" do
      402.to_roman.should eq "CDII"
    end
    it "changes 575 to DLXXV" do
      575.to_roman.should eq "DLXXV"
    end
    it "changes 911 to CMXI" do
      911.to_roman.should eq "CMXI"
    end
    it "changes 1024 to MXXIV" do
      1024.to_roman.should eq "MXXIV"
    end
    it "changes 3000 to MMM" do
      3000.to_roman.should eq "MMM"
    end
  end
end
