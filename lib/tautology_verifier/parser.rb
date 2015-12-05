require_relative 'assumer'
require_relative 'extractor'
require_relative 'simulator'

class Parser

  def self.parse_statement(propositional_statement)
    predicate_array = Extractor.extract_predicates(propositional_statement)
    random_truth_values = Assumer.assign_random_truth_table(predicate_array)
    possible_truth_tables = Assumer.generate_possible_truth_tables(predicate_array)
    decision = Simulator.new(propositional_statement, predicate_array, random_truth_values, possible_truth_tables).check_for_tautology
    decision
  end

end
