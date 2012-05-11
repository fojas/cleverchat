require 'cleverbot'

client = Cleverbot::Client.new
sentences = ['Hi.']
voices = ['Bruce','Kathy']
i = 0;

sentences.each do |n|
  sentences << client.write(n).to_s
  p "#{voices[i]}: #{n}"
  `say -v #{voices[i]} "#{n}"`
  i = (i + 1) % 2
end
