require_relative 'assumer'
require_relative 'decider'
require_relative 'extractor'
require_relative 'simulator'

class Parser

  def self.parse_statement(propositional_statement)
    predicate_array = Extractor.extract_predicates(propositional_statement)
    random_truth_values = Assumer.assign_random_truth_table(predicate_array)
    possible_truth_tables = Assumer.generate_possible_truth_tables(predicate_array)
    simulator = Simulator.new(propositional_statement, predicate_array, random_truth_values, possible_truth_tables).check_for_tautology
    # simulated_statement = Simulator.substitute_truth_values_into_statement(propositional_statement, random_truth_values)
    decision = Decider.decide_whether_tautology(simulated_statement)
    decision
  end

end
