class Contact
  # attr_accessor :first_name, :last_name

  def initialize(attribute)
    @first_name = attribute.fetch(:first_name)
    @last_name = attribute.fetch(:last_name)
  #   @address = :address
  #   @city = :city
  #   @state = :state
  #   @zip = :zip
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end
end
