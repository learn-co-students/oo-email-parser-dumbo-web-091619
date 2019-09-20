# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
    attr_accessor :parse
    def initialize(email_address)
        splitted = email_address.split(/[,\s]/).delete_if {|char| char.size < 2 }
        @parse = splitted.uniq
        
    end




end

# binding.pry