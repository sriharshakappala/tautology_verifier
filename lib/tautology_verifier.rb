require_relative 'tautology_verifier/parser'

class TautologyVerifier

  def self.verify_tautology
    propositional_statements = TautologyVerifier.get_statements
    propositional_statements.each do |propositional_statement|
      decision = Parser.parse_statement(propositional_statement)
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

end

TautologyVerifier.verify_tautology
