SPELLING_BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
BLOCKS = {
   'B'=>'O', 'X'=>'K', 'D'=>'Q', 'C'=>'P', 'N'=>'A',
  'G'=>'T', 'R'=>'E', 'F'=>'S', 'J'=>'W', 'H'=>'U',
  'V'=>'I', 'L'=>'Y', 'Z'=>'M'
}
def block_word?(word)
  word = word.upcase
  SPELLING_BLOCKS.none? {|block| word.count(block) >= 2}
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true