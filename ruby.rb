require 'rubygems'
require 'couchrest'

SERVER = CouchRest.new
db     = SERVER.database!('pruebas')
puts "¿En qué ciudad te gustaría vivir?"
STDOUT.flush
codigo=gets.chomp
db.save_doc('_id'=>codigo,'name'=>'Mahesh','Age'=>'33')
doc=db.get(codigo)
puts doc.inspect
