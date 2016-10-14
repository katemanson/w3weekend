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

  def delete()
    sql = "DELETE FROM customers WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE customers SET
      name = '#{@name}',
      funds = #{@funds}
      WHERE id = #{@id}"
    return SqlRunner.run(sql).first
  end

  def self.all()
    sql = "SELECT * FROM customers"
    return Customer.map_to_objects(sql)
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM customers WHERE id = #{id}"
    return Customer.map_to_object(sql)
  end

  def self.find_by_name(name)
    sql = "SELECT * FROM customers WHERE name = #{'name'}"
    return Customer.map_to_object(sql)
  end

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