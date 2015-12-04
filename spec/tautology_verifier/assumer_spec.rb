require_relative '../../lib/tautology_verifier/assumer'

RSpec.describe Assumer, "#assign_random_truth_values_to_predicates" do

  context "when a valid predicate array is given" do

    it "returns a hash with each predicate assigned to a random truth value" do
      predicate_array = Assumer.assign_random_truth_values_to_predicates(['a', 'b'])
      expect(predicate_array).to eq "{ 'a' => true, 'b' => false }"
    end

  end

end
