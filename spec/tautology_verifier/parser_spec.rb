require_relative '../../lib/tautology_verifier/parser'

RSpec.describe Parser, "#parse_statement" do

  context "when a valid propositional statement is given" do

    it "returns a decision whether the propositional statement is tautology or not" do
      decision = Parser.parse_statement("a & a")
      expect(decision).not_to eq nil
    end

  end

end
