require_relative 'assumer'
require_relative 'decider'
require_relative 'extractor'
require_relative 'simulator'

class Parser

  def self.parse_statement(propositional_statement)
    predicate_array = Extractor.extract_predicates(propositional_statement)
    random_truth_values = Assumer.assign_random_truth_table(predicate_array)
    simulated_statement = Simulator.substitute_truth_values_into_statement(propositional_statement, random_truth_values)
    decision = Decider.decide_whether_tautology(simulated_statement)
    decision
  end

end
