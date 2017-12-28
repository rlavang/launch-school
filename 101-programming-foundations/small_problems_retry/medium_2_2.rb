def block_word?(word) 
  blocks = {'B' => 'O', 'X' => 'K', 'D' => 'Q', 'N' => 'A', 'G' => 'T', 'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U', 'V' => 'I', 'L' =>'Y', 'Z' => 'M'}
  word.split('').each do |char| 
    if BLOCKS.keys.include?(char) || BLOCKS.values.include?(char)
      return
  end
end