# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
attr_accessor :emails
@@emailsarr = []
def initialize(emails)
    @email = emails
end
def parse
   @@emailsarr =@email.split(' ')
   x=0
   while x<@@emailsarr.length-1
    asd=@@emailsarr[x].split('')
    asd.delete(",")
    @@emailsarr[x] = asd.join('')
    #binding.pry
        x+=1
    end
   return @@emailsarr.uniq
end

end
