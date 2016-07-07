class PryBeGone
  def welcome
  puts "Welcome to pry-be-gone! Would you like to remove or comment-out all binding.pry statements? (remove/comment)"
  end

  def get_user_input
     @user_input = gets.chomp
  end

  def search_and_change(arg1, arg2)
    Dir.glob('**/*.rb').each do |file|
      if file != 'lib1.rb'
        text = File.read(file) 
        content = text.gsub("#{arg1}", "#{arg2}")
        File.open(file, "w") { |file| file << content }
      end
    end
  end

def run

  self.welcome
  self.get_user_input

  if @user_input.downcase == "comment-out"
    self.search_and_change("binding.pry", "#binding.pry")
   
  elsif @user_input.downcase == "remove"
    self.search_and_change("binding.pry", "")
      
  elsif @user_input.downcase == "comment-in"
    self.search_and_change("#binding.pry", "binding.pry")
  end
end
end



  