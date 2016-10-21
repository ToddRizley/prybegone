# require "prybegone/version"

  class PryBeGone

    @@input_flag = ARGV

    def search_and_change(arg1, arg2)
      @curr_dir = Dir.pwd
      Dir.glob("#@curr_dir/**.rb").each do |file|
        unless file.include? "prybegone.rb"
          text = File.read(file)
          content = text.gsub("#{arg1}", "#{arg2}")
          File.open(file, "w") { |file| file << content }
        end
      end
    end

    def self.this_file
      Dir.pwd
    end

    def run
      if @@input_flag.include?("-co")
        self.search_and_change(" binding.pry", "#binding.pry")
        self.search_and_change("\nbinding.pry", "\n#binding.pry")

      elsif @@input_flag.include?("-r")
        self.search_and_change(" binding.pry", "")
        self.search_and_change("\nbinding.pry", "\n")

      elsif @@input_flag.include?("-ci")
        self.search_and_change("#binding.pry", "binding.pry")
        self.search_and_change("\n#binding.pry", "\nbinding.pry")
      end
    end
  end


# pbg = PryBeGone.new
# pbg.run
