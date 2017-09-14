class Contact
  @@full_contact = []
  attr_reader :id
  attr_accessor :first_name, :last_name, :address, :city, :state, :zip

  def initialize(attribute)
    @first_name = attribute.fetch(:first_name)
    @last_name = attribute.fetch(:last_name)
    @address = attribute.fetch(:address)
    @city = attribute.fetch(:city)
    @state = attribute.fetch(:state)
    @zip = attribute.fetch(:zip)
    @id = @@full_contact.length + 1
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def save
    @@full_contact.push(self)
  end

  def self.all()
    @@full_contact
  end

  def self.sort
    @@full_contact.sort_by! {|contact_id| contact_id.last_name}
  end

  def self.find(id)
     item_id = id.to_i()
     @@full_contact.each do |item|
       if item.id == item_id
         return item
       end
     end
   end

  def self.clear()
    @@full_contact = []
  end
end
