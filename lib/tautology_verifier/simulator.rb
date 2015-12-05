require_relative 'decider'

class Simulator

  def initialize(propositional_statement, predicate_array, random_truth_values, possible_truth_tables)
    @propositional_statement = propositional_statement
    @predicate_array = predicate_array
    @random_truth_values = random_truth_values
    @possible_truth_tables = possible_truth_tables
    @max_truth_tables = possible_truth_tables.count
  end

  def check_for_tautology
    counter = 0
    random_decision = Decider.new(@propositional_statement, @random_truth_values).evaluate_expression
    if random_decision == false
      what_simulator_tells = "False"
    elsif random_decision == true
      @possible_truth_tables.each do |possible_truth_table|
        counter += 1
        decision = Decider.new(@propositional_statement, possible_truth_table).evaluate_expression
        if decision == false
          what_simulator_tells = "False"
          break
        elsif decision == true && counter == @max_truth_tables
          what_simulator_tells = "True"
          break
        end
      end
    end
    what_simulator_tells
  end

  def self.substitute_truth_values_into_statement(propositional_statement, random_truth_values)
    simulated_statement = ""
    random_truth_values.each do |truth_value|
      simulated_statement = propositional_statement.gsub!(truth_value[0], truth_value[1].to_s)
    end
    simulated_statement
  end

end
