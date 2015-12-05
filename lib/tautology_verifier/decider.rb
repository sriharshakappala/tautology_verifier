class Decider

  def initialize(propositional_statement, truth_values)
    @propositional_statement = propositional_statement
    @truth_values = truth_values
    @truth_values.each do |truth_value|
      instance_variable_set("@" + truth_value[0].to_s, truth_value[1])
      create_custom_attr(truth_value[0])
    end
  end

  def create_custom_method(name, &block)
    self.class.send(:define_method, name, &block)
  end

  def create_custom_attr(name)
    create_custom_method(name.to_sym) { instance_variable_get( "@" + name.to_s ) }
  end

  def evaluate_expression
    eval(@propositional_statement)
  end

  def self.decide_whether_tautology(simulated_statement)
    decision = RubyVM::InstructionSequence.new(simulated_statement).eval
    decision
  end

end
