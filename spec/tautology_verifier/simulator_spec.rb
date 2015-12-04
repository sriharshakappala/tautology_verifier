require_relative '../../lib/tautology_verifier/simulator'

RSpec.describe Assumer, "#substitute_truth_values_into_statement" do

  context "when predicate array and random truth table values are given" do

    it "returns a simulated version of propositional statment with truth values" do
      simulated_statement = Simulator.substitute_truth_values_into_statement("((a | b) & c)", {"a"=>true, "b"=>true, "c"=>false})
      expect(simulated_statement).to eq "((true | true) & false)"
    end

  end

end
