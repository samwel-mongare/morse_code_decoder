# frozen_string_literal: true

MORSE_CODE = Hash[*%w[
  A .- B -... C -.-. D -.. E . F ..-.
  G --. H .... I .. J .--- K -.- L .-..
  M -- N -. O --- P .--. Q --.- R .-.
  S ... T - U ..- V ...- W .-- X -..-
  Y -.-- Z --.. 1 .---- 2 ..--- 3 ...-- 4 ....-
  5 ..... 6 -.... 7 --... 8 ---.. 9 ----. 0 -----
]].invert.freeze

def decode_morse(str)
  words = str.to_s.split(/\s{2,}/)
  words.map { |w| w.split(' ').map { |mc| MORSE_CODE[mc] }.join }.join ' '
end

decode_morse('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
 
