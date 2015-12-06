require_relative '../../lib/tautology_verifier/assumer'

RSpec.describe Assumer, "#assign_random_truth_values_to_predicates" do

  context "when a valid predicate array is given" do

    it "returns a hash with each predicate assigned to a random truth value" do
      random_truth_table = Assumer.assign_random_truth_table(['a', 'b'])
      random_truth_table.each do |predicate_hash|
        expect(random_truth_table[predicate_hash[0]]).not_to eq nil
      end
    end

  end

end

RSpec.describe Assumer, "#generate_possible_truth_tables" do

  context "when a valid predicate array is given" do

    it "returns all the possible truth tables that can be formed via those predicates" do
      possible_truth_tables = Assumer.generate_possible_truth_tables(['a', 'b'])
      expect(possible_truth_tables.count).to eq 4
    end

  end

end
