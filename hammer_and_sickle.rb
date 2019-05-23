#!/usr/bin/ruby
# AAの中に好きなメッセージを埋め込むことができます

class Array
	def msg_fill(str)
		message = ""
		data = self.join("\n").split("")
		for i in 1..self.join("").length
			if message.length == 0
				message.concat(str.chomp)
			end
			if data[i-1] == "0"
				data[i-1] = message.slice!(0,2)
			end
		end
		return data.join("").gsub("1", "__")
	end
end

hammer_and_sickle = "1FFFFFDFFC9FF19FC39F0F1C0F3C8E3F8E7F88FB83E38F100E719FFFF".hex.to_s(2).scan(/.{15}/)
the_manifest = "WorkersOfTheWorldUnite!"
#the_manifest = "ПролетарииВсехСтран,Соединяйтесь!"

puts hammer_and_sickle.msg_fill(the_manifest)
