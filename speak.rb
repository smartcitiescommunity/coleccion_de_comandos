# ruby speak.rb dir_book.txt
MINS_PER_MP3 = 60

def speak(file_name)
  story_name = file_name.split(".")[0]
  
  # Make a directory to put all of the _mp3_ files in.
  `mkdir #{story_name}`
  # Generate the _wav_ files.
  `espeak -v en-us -f #{file_name} -s 130 -w ./#{story_name}/#{story_name}.wav --split=#{MINS_PER_MP3}`
  
  # Convert the _wav_ files to _mp3_.
  Dir["./#{story_name}/*.wav"].each do |f|
    `lame -V2 #{f} #{f.gsub(/\.wav$/, ".mp3")}`
  end
  
  # Remove the _wav_ files.
  `rm ./#{story_name}/*.wav`
end


file_name  = ARGV[0]
if file_name && file_name.strip && ARGV.length == 1
  speak file_name
else
  puts "Usage: ruby speak.rb <text file>"
end
