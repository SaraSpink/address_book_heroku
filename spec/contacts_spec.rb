require ('rspec')
require ('contacts')
require ('pry')

describe ('Contact') do
  describe ('#first_name') do
    it ("takes first name and returns it") do
      contact_info = Contact.new({:first_name=> "Ollie", :last_name=> "Diablo"})
      expect(contact_info.first_name).to(eq("Ollie"))
    end
  end

  describe ('#last_name') do
    it ("takes last name and returns it") do
      contact_info = Contact.new({:first_name=> "Ollie", :last_name=> "Diablo"})
      expect(contact_info.last_name).to(eq("Diablo"))
    end
  end
end
