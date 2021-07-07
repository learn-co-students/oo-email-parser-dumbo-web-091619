# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser
    
    attr_accessor :email_addresses

    def initialize(emails)
        @email_addresses = emails
    end

    def parse

        email_addresses.split.collect do |email|
            email.split(',')
        end.flatten.uniq



        # email_array_comma_split = self.email_addresses.split(",")
        # email_array_space_split = self.email_addresses.split(" ")
        # if email_array_space_split[0][-1] == ','
        #     output = email_array_comma_split.map {|email| email.strip}
        #     output.uniq
        # elsif email_array_space_split[0][-1] != ','
        #     output = email_array_space_split.map {|email| email.strip}
        #     output.uniq
        # else
        #     output1 = email_array_comma_split.map {|email| email.strip}
        #     output1.uniq
        #     final_output =[]
        #     output1.each do |part|
        #         if part.split(" ").length > 1
        #             part.split(" ").each do |inner_part|
        #                 final_output << inner_part
        #             end
        #         else
        #             final_output << part
        #         end
        #     end
        #     final_output
            
        # end
    end
    
    # def its_only_comma
    #     email_array_comma_split = self.email_addresses.split(",")
    #     email_array_space_split = self.email_addresses.split(" ")
    #     email_array_comma_split.any {|email| email[-1] == ","}
    #     binding.pry

    # end

    # def its_only_space
    #     email_array_comma_split = self.email_addresses.split(",")
    #     email_array_space_split = self.email_addresses.split(" ")
    # end

    # def it_has_both
    #     email_array_comma_split = self.email_addresses.split(",")
    #     email_array_space_split = self.email_addresses.split(" ")
    # end
end
    
