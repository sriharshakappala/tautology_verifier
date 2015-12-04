class Decider

  def self.decide_whether_tautology(simulated_statement)
    decision = RubyVM::InstructionSequence.new(simulated_statement).eval.to_s.capitalize
    decision.to_s.capitalize
  end

end
