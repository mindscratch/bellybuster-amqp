require 'bellybuster/transport'

module BellyBuster
  module Transport
    module AMQP
      class Sender < BellyBuster::Transport::BasSender
        def send(message)
          puts "amqp sender, sending: #{message.inspect}"
        end
      end
    end
  end
end