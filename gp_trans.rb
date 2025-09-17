rl = {
	"ᚠ" => “F”,
	"ᚢ" => “U”,
	"ᚦ" => “TH”,
	"ᚩ" => “O”,
	"ᚱ" => “R”,
	"ᚳ" => “C_K”,
	"ᚷ" => “G”,
	"ᚹ" => “W”,
	"ᚻ" => “H”,
	"ᚾ" => “N”,
	"ᛁ" => “I”,
	"ᛄ" => “J”,
	"ᛇ" => “EO”,
	"ᛈ" => “P”,
	"ᛉ" => “X”,
	"ᛋ" => “S_Z”,
	"ᛏ" => “T”,
	"ᛒ" => “B”,
	"ᛖ" => “E”,
	"ᛗ" => “M”,
	"ᛚ" => “L”,
	"ᛝ" => “NG_ING”,
	"ᛟ" => “OE”,
	"ᛞ" => “D”,
	"ᚪ" => “A”,
	"ᚫ" => “AE”,
	"ᚣ" => “Y”,
	"ᛡ" => “IA_IO”,
	"ᛠ" => “EA”,
}

rv = {
	"ᚠ" => 2,
	"ᚢ" => 3,
	"ᚦ" => 5,
	"ᚩ" => 7,
	"ᚱ" => 11,
	"ᚳ" => 13,
	"ᚷ" => 17,
	"ᚹ" => 19,
	"ᚻ" => 23,
	"ᚾ" => 29,
	"ᛁ" => 31,
	"ᛄ" => 37,
	"ᛇ" => 41,
	"ᛈ" => 43,
	"ᛉ" => 47,
	"ᛋ" => 53,
	"ᛏ" => 59,
	"ᛒ" => 61,
	"ᛖ" => 67,
	"ᛗ" => 71,
	"ᛚ" => 73,
	"ᛝ" => 79,
	"ᛟ" => 83,
	"ᛞ" => 89,
	"ᚪ" => 97,
	"ᚫ" => 101,
	"ᚣ" => 103,
	"ᛡ" => 107,
	"ᛠ" => 109,
}

lv = {
	“F” => 2,
	“U” => 3,
	“TH” => 5,
	“O” => 7,
	“R” => 11,
	“C/K” => 13,
	“G” => 17,
	“W” => 19,
	“H” => 23,
	“N” => 29,
	“I” => 31,
	“J” => 37,
	“EO” => 41,
	“P” => 43,
	“X” => 47,
	“S/Z” => 53,
	“T” => 59,
	“B” => 61,
	“E” => 67,
	“M” => 71,
	“L” => 73,
	“NG/ING” => 79,
	“OE” => 83,
	“D” => 89,
	“A” => 97,
	“AE” => 101,
	“Y” => 103,
	“IA/IO” => 107,
	“EA” => 109
}

puts("What would you like to convert between? Type the number of the conversion you want.", "1. Runes & Letters", "2. Runes & Values", "3. Letters & Values")
hashtype = gets.chomp.to_i

puts("Type what you would like to convert.")
stringtotranslate = gets.chomp()
charactertotranslate = stringtotranslate.split(//) 

translatedarray = []

case hashtype
when 1
	charactertotranslate.each do |c|
		if rl.key?(c)
			translatedarray << rl[c]
		else
			translatedarray << c
		end
	end
when 2
	charactertotranslate.each do |c|
		if rv.key?(c)
			translatedarray << rv[c]
		else
			translatedarray << c
		end
	end
when 3
	charactertotranslate.each do |c|
		if lv.key?(c)
			translatedarray << lv[c]
		else
			translatedarray << c
		end
	end
else
	puts("Invalid conversion type. Please try again.")
	exit
end

puts translatedarray.join
