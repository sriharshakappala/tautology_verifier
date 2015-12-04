class Simulator

  def self.substitute_truth_values_into_statement(propositional_statement, random_truth_values)
    simulated_statement = ""
    random_truth_values.each do |truth_value|
      simulated_statement = propositional_statement.gsub!(truth_value[0], truth_value[1].to_s)
    end
    simulated_statement
  end

end
