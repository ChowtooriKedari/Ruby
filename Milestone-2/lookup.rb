def get_command_line_argument
  # ARGV is an array that Ruby defines for us,
  # which contains all the arguments we passed to it
  # when invoking the script from the command line.
  # https://docs.ruby-lang.org/en/2.4.0/ARGF.html
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

# `domain` contains the domain name we have to look up.
domain = get_command_line_argument

# File.readlines reads a file and returns an
# array of string, where each element is a line
# https://www.rubydoc.info/stdlib/core/IO:readlines
dns_raw = File.readlines("zone")

def parse_dns(dns_raw)
  increment_value = 0
  dns_raw = dns_raw.select { |record| record != "\n" }
  dns_raw = dns_raw.select { |record| !(record.start_with? "#") }
  dns_records = []
  dns_raw.each do |record|
    message = record.split(",")
    message[1] = message[1].strip
    message[2] = message[2].strip
    dns_records[increment_value] = {
      :field1 => message[0],
      :field2 => message[1],
      :field3 => message[2],
    }
    increment_value = increment_value + 1
  end
  return dns_records
end

def resolve(dns_records, lookup_chain, domain)
  dns_length = dns_records.length
  record_count = 0
  dns_records.each do |records|
    if records[:field2] == domain
      if records[:field1] == "A"
        lookup_chain.push(records[:field3])
      elsif records[:field1] = "CNAME"
        lookup_chain.push(records[:field3])
        resolve(dns_records, lookup_chain, records[:field3])
      end
    elsif records[:d2] != domain
      record_count = record_count + 1
      if record_count == dns_length
        lookup_chain = []
        string_value = "Error: record not found for " + domain
        lookup_chain.push(string_value)
      end
    end
  end
  return lookup_chain
end

dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
puts lookup_chain.join(" => ")
