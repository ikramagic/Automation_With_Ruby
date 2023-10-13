require 'launchy'
require 'rspec'
require 'dotenv'

def get_search_input_or_stop
    input = ARGV
    abort("Y a rien, tape quelque chose s'il te plaît.") if ARGV.empty?
    return input
end

#puts get_search_input_or_stop

def build_url
    final_trail = get_search_input_or_stop
    what_to_launch = "https://www.google.com/search?q=#{final_trail}"
    puts what_to_launch
end
