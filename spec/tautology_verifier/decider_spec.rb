require_relative '../../lib/tautology_verifier/decider'

RSpec.describe Decider, "#decide_whether_tautology" do

  context "when a valid simulated statement is given" do

    it "returns a decision whether the simulated statement is a tautology or not" do
      decision = Decider.decide_whether_tautology("((true | true) & false)")
      expect(decision).to eq false
    end

  end

  context "when a valid propositional statement and sample truth values are given" do

    it "simulates the sample truth values into the expession and returns either true if the resulting operation is true" do
      decision = Decider.new("( (a&b) | !(a&b) )", {"a"=>true, "b"=>false}).evaluate_expression
      expect(decision).to eq true
    end

  end

end
