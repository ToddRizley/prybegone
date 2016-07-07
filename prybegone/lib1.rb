
puts "Welcome to pry-be-gone! Would you like to remove or comment-out all binding.pry statements? (remove/comment)"
  
  user_input = gets.chomp

  if user_input.downcase == "comment-out"
    Dir.glob('**/*.rb').each do |file|
      if file != 'test.rb'
        text = File.read(file) 
        content = text.gsub("binding.pry", "#binding.pry")
        File.open(file, "w") { |file| file << content }
      end
    end
  elsif user_input.downcase == "remove"
      Dir.glob('**/*.rb').each do |file|
      if file != 'test.rb'
        text = File.read(file) 
        content = text.gsub("binding.pry", "")
        File.open(file, "w") { |file| file << content }
      end
    end
  elsif user_input.downcase == "comment-in" || user_input.downcase == "comment in"
    Dir.glob('**/*.rb').each do |file|
      if file != 'test.rb'
        text = File.read(file) 
        content = text.gsub("#binding.pry", "binding.pry")
        File.open(file, "w") { |file| file << content }
      end
    end
  end


  