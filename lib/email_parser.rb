# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :emails
    def initialize(emails)
        @emails = emails
    end

    def parse
    #     if emails.include?(",")
    #         array_of_emails = emails.split(",")
    #         parsed_emails = array_of_emails.map do |email|
    #             email.strip
    #         end
    #         if parsed_emails.include?(" ")
    #             new_parsed = parsed_emails.map do |email|
    #                 if email.include?(" ")
    #                     email.split(" ")
    #                 end
    #             end
    #         return new_parsed 
    #         else
    #             return parsed_emails
    #         end
    #     elsif emails.include?(" ")
    #         array_of_emails = emails.split(" ")
    #         parsed_emails = array_of_emails.map do |email|
    #             email.strip
    #         end
    #         return parsed_emails
    #     end
    emails.split(/, | /).uniq
    end

end