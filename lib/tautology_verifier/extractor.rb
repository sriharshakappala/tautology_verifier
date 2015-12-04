class Extractor

    def self.extract_predicates(statement)
      predicate_array = statement.gsub(/[()!&|]/, '').gsub(/\s+/, "").split('').compact.uniq
      predicate_array
    end

end
