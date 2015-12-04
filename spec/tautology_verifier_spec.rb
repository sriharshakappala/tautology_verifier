require_relative '../../lib/tautology_verifier'

RSpec.describe TautologyVerifier, "#assign_random_truth_values_to_predicates" do

  context "when a valid predicate array is given" do

    it "returns a hash with each predicate assigned to a random truth value" do
      random_truth_table = Assumer.assign_random_truth_table(['a', 'b'])
      random_truth_table.each do |predicate_hash|
        expect(random_truth_table[predicate_hash[0]]).not_to eq nil
      end
    end

  end

end
