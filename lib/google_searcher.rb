require 'launchy'
require 'rspec'
require 'dotenv'

def get_search_input_or_stop
    input = ARGV
    abort("Y a rien, tape quelque chose s'il te plaît.") if ARGV.empty?
    return input
end

def build_url
    final_trail = get_search_input_or_stop
    what_to_launch = "https://www.google.com/search?q="
    send_to_launchy = [what_to_launch, final_trail].join('+')
    return send_to_launchy
end

def launch_url
    send_to_launchy = build_url
    Launchy.open(build_url)
end

get_search_input_or_stop
build_url
launch_url