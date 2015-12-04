require_relative '../../lib/tautology_verifier/decider'

RSpec.describe Assumer, "#decide_whether_tautology" do

  context "when a valid simulated statement is given" do

    it "returns a decision whether the simulated statement is a tautology or not" do
      decision = Decider.decide_whether_tautology("((true | true) & false)")
      expect(decision).to eq "False"
    end

  end

end
