require "rspec"
require "w1d2"

RSpec.describe "Homework" do
  context "sum_to" do
    it "returns sum of 5..1" do
      expect(sum_to(5)).to eq(15)
    end
  end

  context "add_numbers" do
    it "adds numbers" do
      expect(add_numbers([1, 2, 3, 4])).to eq(10)
    end
  end

  context "gamma_fnc" do
    it "gammas 8" do
      expect(gamma_fnc(8)).to eq(5040)
    end

    it "gammas 4" do
      expect(gamma_fnc(4)).to eq(6)
    end
  end
end
