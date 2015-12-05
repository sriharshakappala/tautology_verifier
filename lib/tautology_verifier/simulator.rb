require_relative 'decider'

# Simulator gets all the possible truth table values and calls `Decider` for checking the truth value
# of the statement.
# ____________________________________________________________________________________________________
# Simulator works on the below strategy
# -------------------------------------
# 1. First it simulates a random truth value into the statement and checks for its truthness. If the
# truth value is `false` it directly returns `False` telling the statement is not a tautology.
# 2. If the decision from random truth value is `true` it starts looping through all the possible truth
# table values, if it finds a `false` in between the loop it returns the decision as `False`
# 3. Else if it doesn't encounter any `false` till end of all the truth table values it returns `True`
# telling the statement as a tautology.
# ____________________________________________________________________________________________________
# Time Complexity
# --------------
# Best Case Scenario - O(1)
# Worst Case Scenario - O(n), where n is the total number of possible truth tables for the statement
# Average Case Scenario - O(n log(n)), where n is the total number of possible truth tables for the statement

class Simulator

  def initialize(propositional_statement, predicate_array, random_truth_values, possible_truth_tables)
    @propositional_statement = propositional_statement
    @predicate_array = predicate_array
    @random_truth_values = random_truth_values
    @possible_truth_tables = possible_truth_tables
    @max_truth_tables = possible_truth_tables.count
  end

  # Main method which goes through the Simulator strategy.
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

  # Deprecated usage of statement simulator
  def self.substitute_truth_values_into_statement(propositional_statement, random_truth_values)
    simulated_statement = ""
    random_truth_values.each do |truth_value|
      simulated_statement = propositional_statement.gsub!(truth_value[0], truth_value[1].to_s)
    end
    simulated_statement
  end

end
