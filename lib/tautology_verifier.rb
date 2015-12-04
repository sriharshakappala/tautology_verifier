require_relative 'tautology_verifier/assumer'
require_relative 'tautology_verifier/decider'
require_relative 'tautology_verifier/extractor'
require_relative 'tautology_verifier/simulator'

class TautologyVerifier

  def self.verify_tautology
    propositional_statements = TautologyVerifier.get_statements
    propositional_statements.each do |propositional_statement|
      decision = TautologyVerifier.parse_statement(propositional_statement)
      puts decision + "\n"
    end
  end

  def self.get_statements
    max_statements_count = 0
    propositional_statements = Array.new
    puts "How many propositional statements do you want to check?"
    max_statements_count = gets.chomp.to_i
    puts "Type the propositional statement. Once you type a statement press `Enter`"
    max_statements_count.times do |i|
      propositional_statements[i] = gets.chomp
    end
    propositional_statements
  end

  def self.parse_statement(propositional_statement)
    predicate_array = Extractor.extract_predicates(propositional_statement)
    random_truth_values = Assumer.assign_random_truth_table(predicate_array)
    simulated_statement = Simulator.substitute_truth_values_into_statement(propositional_statement, random_truth_values)
    decision = Decider.decide_whether_tautology(simulated_statement)
    decision
  end

end

TautologyVerifier.verify_tautology
