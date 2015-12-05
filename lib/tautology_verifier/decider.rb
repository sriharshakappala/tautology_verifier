class Decider

  def self.decide_whether_tautology(simulated_statement)
    decision = RubyVM::InstructionSequence.new(simulated_statement).eval
    decision
  end

end
