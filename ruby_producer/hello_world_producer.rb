require 'bunny'

STDOUT.sync = true

conn = Bunny.new
conn.start

ch = conn.create_channel
x  = ch.default_exchange

x.publish("Hello! this is publishing side in ruby", :routing_key => "hello")

sleep 1.0
conn.close