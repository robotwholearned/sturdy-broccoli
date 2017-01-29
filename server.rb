require "em-websocket"

EventMachine.run do 
	@channel = EM::Channel.new
	puts 'channel created'

	EventMachine::WebSocket.start(host:'0.0.0.0', port: 8080, debug: true) do |ws| 
		ws.onopen do 
			subscriberId = @channel.subscribe { |msg| ws.send(msg) }
			@channel.push("#{subscriberId} connected")
			ws.onmessage{|msg| @channel.push("<#{subscriberId}> #{msg}")}
			ws.onclose {@channel.unsubscribe(subscriberId)}
		end
	end
end
