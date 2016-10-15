class Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options['id'].to_i if options['id'] != 0
    @name = options['name']
    @funds = options['funds'].to_f
  end

  def save()
    sql = "INSERT INTO customers (name, funds) VALUES ('#{@name}', '#{@funds}') RETURNING *"
    customer = SqlRunner.run(sql).first
    @id = customer['id'].to_i
  end

  def update()
    sql = "UPDATE customers SET
      name = '#{@name}',
      funds = #{@funds}
      WHERE id = #{@id}"
    return SqlRunner.run(sql).first
  end

  def delete()
    sql = "DELETE FROM customers WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  # is this right - don't need an inner join?
  def number_of_tickets_bought()
    sql = "SELECT COUNT(t.customer_id) FROM tickets t WHERE t.customer_id = #{@id}"
    return SqlRunner.run(sql).first['count'].to_i
  end

  # returns films customer has bought tickets for; DISTINCT omits duplicates (which occur where a customer has bought more than one ticket to the film); could do the same by adding GROUP BY f.id at the end, though order of results is a little different then
  def films()
    sql = "SELECT DISTINCT f.* FROM films f INNER JOIN tickets t ON f.id = t.film_id WHERE t.customer_id = #{@id}"
    return Film.map_to_objects(sql)
  end

  def self.all()
    sql = "SELECT * FROM customers"
    return Customer.map_to_objects(sql)
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM customers WHERE id = #{id}"
    return Customer.map_to_object(sql)
  end

  # def self.find_by_name(name)
  #   sql = "SELECT * FROM customers WHERE name = #{'name'}"
  #   return Customer.map_to_object(sql)
  # end
  # # name needs to be passed in in inverted commas -- any way round this?

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def self.map_to_objects(sql)
    customers = SqlRunner.run(sql)
    return customers.map { |customer| Customer.new(customer) }
  end

  def self.map_to_object(sql)
    customer = Customer.map_to_objects(sql)
    return customer.first
  end

end