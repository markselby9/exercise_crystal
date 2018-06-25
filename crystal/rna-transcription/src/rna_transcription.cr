# Please implement your solution to rna-transcription in this file
module RnaComplement
	extend self

	def of_dna(dna : String)
		dna_map = {'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U'}
		dna.chars.map{|d| dna_map[d]}.join
	end
end

puts RnaComplement.of_dna("CGCT")