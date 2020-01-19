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
j=0
dns_raw=dns_raw.select{ |i| i!="\n"}
dns_raw=dns_raw.select{ |i| !(i.start_with?"#")}
dns_records=[]
dns_raw.each do |i|
m=i.split(',')
m[1]=m[1].strip
m[2]=m[2].strip
dns_records[j] = {
   :d1=>m[0],
   :d2=>m[1],
   :d3=>m[2],
}
j=j+1
end
return dns_records
end


def resolve(dns_records, lookup_chain, domain)
l=dns_records.length
c=0
dns_records.each do |records|
 if records[:d2]==domain
     if records[:d1]=="A"
     lookup_chain.push(records[:d3])
     elsif records[:d1]="CNAME"
     lookup_chain.push(records[:d3])
     resolve(dns_records,lookup_chain,records[:d3])
     end
 elsif records[:d2]!=domain
          c=c+1
          if c==l
            lookup_chain=[]
            s="record not found for " +domain
	    lookup_chain.push(s)
          end
 end
end
return lookup_chain
end

dns_records=parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
puts lookup_chain.join(" => ")
