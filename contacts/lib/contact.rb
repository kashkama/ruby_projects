class Contact
  attr_reader(:first_name, :last_name, :job_title, :company, :address, :phone_number)

  @@people = []
  define_method(:initialize)  do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name  = attributes.fetch(:last_name)
    @job_title  = attributes.fetch(:job_title)
    @company  = attributes.fetch(:company)
    @address  = attributes.fetch(:address)
    @phone_number = attributes.fetch(:phone_number)
    @id = @@people.length().+(1)
  end

  define_method(:id)  do
    @id
  end

  define_singleton_method(:all) do
    @@people
  end

  define_method(:save)  do
    @@people.push(self)
  end

  define_singleton_method(:clear) do
    @@people  = []
  end

  define_singleton_method(:find)  do |identification|
    found_person  = nil
    @@people.each() do |person|
      if person.id().eql?(identification.to_i())
        found_person  = person
      end
    end
    found_person
  end
end
