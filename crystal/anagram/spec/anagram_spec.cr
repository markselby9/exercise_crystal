require "spec"
require "../src/*"

describe "Anagram" do
  describe "#find" do
    it "detects no anagrams" do
      Anagram.find("diaper", ["hello", "world", "zombies", "pants"]).should eq [] of String
    end

    it "detects one anagram" do
      Anagram.find("ant", ["tan", "stand", "at"]).should eq ["tan"]
    end

    it "detects multiple anagrams" do
      Anagram.find("master", ["stream", "pigeon", "maters"]).should eq ["stream", "maters"]
    end

    it "detects multiple anagrams 2" do
      Anagram.find("allergy", ["gallery", "ballerina", "regally", "clergy", "largely", "leading"]).should eq ["gallery", "regally", "largely"]
    end

    it "does not detect false positives" do
      Anagram.find("galea", ["eagle"]).should eq [] of String
    end

    it "does not detect anagram subsets" do
      Anagram.find("good", ["dog", "goody"]).should eq [] of String
    end

    it "does not detect identical words" do
      Anagram.find("corn", ["corn", "dark", "Corn", "rank", "CORN", "cron", "park"]).should eq ["cron"]
    end

    it "detects anagrams case-insensitively" do
      Anagram.find("Orchestra", ["cashregister", "carthorse", "radishes"]).should eq ["carthorse"]
    end

    it "does not detect a word as its own anagram" do
      Anagram.find("banana", ["Banana"]).should eq [] of String
    end

    it "anagrams must use all letters exactly once" do
      Anagram.find("tapper", ["patter"]).should eq [] of String
    end
  end
end
