require_relative '../../lib/tautology_verifier/extractor'

RSpec.describe Extractor, "#extract_predicates" do

  context "when a valid propositional statement is given" do

    it "returns an array of predicates in statement" do
      predicate_array = Extractor.extract_predicates('(a | b)')
      expect(predicate_array).to eq "['a', 'b']"
    end

  end

end
