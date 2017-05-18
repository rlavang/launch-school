##Using the 'simple_file.txt' that was originally created by following the book
simple = File.read("simple_file.txt")
copy = File.new("copy_file.txt", "w+")

File.open(copy, "a") do |file|
  file.puts simple
end

File.read(copy)
