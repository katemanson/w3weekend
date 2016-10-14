require_relative('./models/film')
require_relative('./models/customer')
require_relative('./models/ticket')
require('pry-byebug')

film1 = Film.new({'title' => "The Girl on the Train", 'price' => 11.00})
film1.save
film2 = Film.new({'title' => "War on Everyone", 'price' => 10.00})
film2.save
film3 = Film.new({'title' => "Supersonic", 'price' => 9.00})
film3.save
film4 = Film.new({'title' => "Swiss Army Man", 'price' => 7.50})
film4.save
film5 = Film.new({'title' => "The Beatles: Eight Days a Week", 'price' => 7.00})
film5.save
film6 = Film.new({'title' => "Queen of Katwe", 'price' => 12.00})
film6.save
film7 = Film.new({'title' => "Bolshoi Ballet: The Golden Age", 'price' => 14.00})
film7.save
film8 = Film.new({'title' => "The Talented Mr Ripley", 'price' => 8.00})
film8.save

customer01 = Customer.new({'name' => "Ronald", 'funds' => 35})
customer01.save
customer02 = Customer.new({'name' => "David", 'funds' => 50})
customer02.save
customer03 = Customer.new({'name' => "Ali", 'funds' => 40})
customer03.save
customer04 = Customer.new({'name' => "John", 'funds' => 70})
customer04.save
customer05 = Customer.new({'name' => "Bill", 'funds' => 30})
customer05.save
customer06 = Customer.new({'name' => "Evie", 'funds' => 75})
customer06.save
customer07 = Customer.new({'name' => "Yasmin", 'funds' => 25})
customer07.save
customer08 = Customer.new({'name' => "Tamsin", 'funds' => 40})
customer08.save
customer09 = Customer.new({'name' => "Wray", 'funds' => 55})
customer09.save
customer10 = Customer.new({'name' => "Aimee", 'funds' => 30})
customer10.save
customer11 = Customer.new({'name' => "Calum", 'funds' => 12})
customer11.save
customer12 = Customer.new({'name' => "Ruaridh", 'funds' => 60})
customer12.save
customer13 = Customer.new({'name' => "Sian", 'funds' => 80})
customer13.save
customer14 = Customer.new({'name' => "Marni", 'funds' => 40})
customer14.save
customer15 = Customer.new({'name' => "Neil", 'funds' => 93})
customer15.save

ticket001 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer01.id})
ticket002 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer01.id})
ticket003 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer01.id})
ticket004 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer01.id})
ticket005 = Ticket.new({'film_id' => film6.id, 'customer_id' => customer01.id})
ticket006 = Ticket.new({'film_id' => film8.id, 'customer_id' => customer01.id})
ticket007 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer02.id})
ticket008 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer02.id})
ticket009 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer02.id})
ticket010 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer02.id})
ticket011 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer03.id})
ticket012 = Ticket.new({'film_id' => film7.id, 'customer_id' => customer03.id})
ticket013 = Ticket.new({'film_id' => film8.id, 'customer_id' => customer03.id})
ticket014 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer04.id})
ticket015 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer04.id})
ticket016 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer04.id})
ticket017 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer04.id})
ticket018 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer04.id})
ticket019 = Ticket.new({'film_id' => film6.id, 'customer_id' => customer04.id})
ticket020 = Ticket.new({'film_id' => film7.id, 'customer_id' => customer04.id})
ticket021 = Ticket.new({'film_id' => film8.id, 'customer_id' => customer04.id})
ticket022 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer05.id})
ticket023 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer05.id})
ticket024 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer05.id})
ticket025 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer05.id})
ticket026 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer06.id})
ticket027 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer07.id})
ticket028 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer07.id})
ticket029 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer08.id})
ticket030 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer08.id})
ticket031 = Ticket.new({'film_id' => film6.id, 'customer_id' => customer08.id})
ticket032 = Ticket.new({'film_id' => film8.id, 'customer_id' => customer08.id})
ticket033 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer09.id})
ticket034 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer09.id})
ticket035 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer09.id})
ticket036 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer10.id})
ticket037 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer10.id})
ticket038 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer10.id})
ticket039 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer10.id})
ticket040 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer10.id})
ticket041 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer11.id})
ticket042 = Ticket.new({'film_id' => film7.id, 'customer_id' => customer11.id})
ticket043 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer12.id})
ticket044 = Ticket.new({'film_id' => film6.id, 'customer_id' => customer12.id})
ticket045 = Ticket.new({'film_id' => film7.id, 'customer_id' => customer12.id})
ticket046 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer13.id})
ticket047 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer13.id})
ticket048 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer14.id})
ticket049 = Ticket.new({'film_id' => film6.id, 'customer_id' => customer14.id})
ticket050 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer15.id})
ticket051 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer15.id})
ticket052 = Ticket.new({'film_id' => film7.id, 'customer_id' => customer15.id})
ticket053 = Ticket.new({'film_id' => film8.id, 'customer_id' => customer15.id})

ticket001.save
ticket002.save
ticket003.save
ticket004.save
ticket005.save
ticket006.save
ticket007.save
ticket008.save
ticket009.save
ticket010.save
ticket011.save
ticket012.save
ticket013.save
ticket014.save
ticket015.save
ticket016.save
ticket017.save
ticket018.save
ticket019.save
ticket020.save
ticket021.save
ticket022.save
ticket023.save
ticket024.save
ticket025.save
ticket026.save
ticket027.save
ticket028.save
ticket029.save
ticket030.save
ticket031.save
ticket032.save
ticket033.save
ticket034.save
ticket035.save
ticket036.save
ticket037.save
ticket038.save
ticket039.save
ticket040.save
ticket041.save
ticket042.save
ticket043.save
ticket044.save
ticket045.save
ticket046.save
ticket047.save
ticket048.save
ticket049.save
ticket050.save
ticket051.save
ticket052.save
ticket053.save

binding.pry
nil