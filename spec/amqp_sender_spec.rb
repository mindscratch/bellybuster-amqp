require 'spec_helper'

require 'bellybuster'

describe BellyBuster::Transport::AMQP::Sender do
  it "should send the message" do
    message = BellyBuster::Package::Message.new "some content", "SomeClass"
    sender = BellyBuster::Transport::AMQP::Sender.new
    sender.send message
  end

#  require 'amqp'
#    EventMachine.run do
#      connection = AMQP.connect(:host => '127.0.0.1')
#      puts "Connected to AMQP broker. Running #{AMQP::VERSION} version of the gem..."
#
#      channel = AMQP::Channel.new(connection)
#      queue = channel.queue("amqpgem.examples.hello_world", :auto_delete => true)
#      exchange = channel.direct("")
#
#      queue.subscribe do |payload|
#        puts "Received a message: #{payload}. Disconnecting..."
#
#        handler = BellyBuster::PackageHandler.new
#        msg = handler.unpack payload
#        puts "Message: #{msg.inspect}"
#
#        #RETHINKTHIS :)...I messed up
#        installed = handler.install msg
#        puts "Package installed? #{installed}"
#
#        client = SampleRestClient.new
#        puts "URL from SampleRestClient: #{client.url}"
#
#        connection.close {
#          EM.stop { exit }
#        }
#      end
#
#      payload = Marshal.dump message
#      exchange.publish payload, :routing_key => queue.name
#    end

end