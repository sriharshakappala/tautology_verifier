require_relative '../../lib/tautology_verifier/simulator'

RSpec.describe Simulator, "#substitute_truth_values_into_statement" do

  context "when predicate array and random truth table values are given" do

    it "returns a simulated version of propositional statement with truth values" do
      simulated_statement = Simulator.substitute_truth_values_into_statement("((a | b) & c)", {"a"=>true, "b"=>true, "c"=>false})
      expect(simulated_statement).to eq "((true | true) & false)"
    end

  end

end

RSpec.describe Simulator, "#check_for_tautology" do

  context "when a valid propositional statement, predicate array, random truth values and all possible truth values are given" do

    it "tells whether the propositional statement is a tautology or not" do
      decision = Simulator.new(
        "a&b",
        ["a", "b"],
        {"a"=>false, "b"=>true},
        [{"a"=>true, "b"=>true}, {"a"=>true, "b"=>false}, {"a"=>false, "b"=>true}, {"a"=>false, "b"=>false}]
      ).check_for_tautology
      expect(decision).to eq "False"
    end

  end

end
