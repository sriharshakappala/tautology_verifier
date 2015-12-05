require 'pry'
require_relative 'decider'

class Simulator

  def initialize(propositional_statement, predicate_array, random_truth_values, possible_truth_tables)
    @propositional_statement = propositional_statement
    @predicate_array = predicate_array
    @random_truth_values = random_truth_values
    @possible_truth_tables = possible_truth_tables
  end

  def check_for_tautology
    random_simultated_statment = ""
    @random_truth_values.each do |random_truth_value|
      random_simultated_statment = @propositional_statement.gsub!(random_truth_value[0], random_truth_value[1].to_s)
    end
    random_decision = Decider.decide_whether_tautology(random_simultated_statment)
    binding.pry
    if random_decision == false
      "False"
    elsif random_decision == true
      binding.pry
      @possible_truth_tables.each do |possible_truth_table|
        simulated_statement = ""
        possible_truth_table.each do |possible_truth_value|
          simulated_statement = @propositional_statement.gsub!(random_truth_value[0], random_truth_value[1].to_s)
        end
        decision = Decider.decide_whether_tautology(simultated_statment)
      end
    end
  end

  def self.substitute_truth_values_into_statement(propositional_statement, random_truth_values)
    simulated_statement = ""
    random_truth_values.each do |truth_value|
      simulated_statement = propositional_statement.gsub!(truth_value[0], truth_value[1].to_s)
    end
    simulated_statement
  end

end
