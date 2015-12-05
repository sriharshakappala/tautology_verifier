class Extractor

  # Extracts the unique redicates from a given propositional statement and returns an array of it.
  def self.extract_predicates(statement)
    predicate_array = statement.gsub(/[()!&|]/, '').gsub(/\s+/, "").split('').compact.uniq
    predicate_array
  end

end
