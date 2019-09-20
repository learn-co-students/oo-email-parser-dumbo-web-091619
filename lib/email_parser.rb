# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser 
  attr_accessor :name, :csv_emails
  
  def initialize(csv_emails)

    @csv_emails = csv_emails
  end 


  def parse 
    delimiters = [',', ' ']
    with_empty = csv_emails.split(Regexp.union(delimiters))
    without_empty = with_empty.reject { |email| email.empty? }
    without_empty.uniq
   end
   
 end 