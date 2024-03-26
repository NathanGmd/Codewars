# def crypto(text, shift)
#   letters = (("a".."z").to_a) + (("A".."Z").to_a)
#   if text == "" || text == nil || text == "   "
#     return ""
#   else
#     text = text.split("")
#     newtext = text.map do |letter|
#         letters.include?(letter) ? test(letter, shift) : letter
#     end.join.strip
#   end
# end



# def test(letter, shift)
#   letters = (("a".."z").to_a) + (("A".."Z").to_a)
#   shift = letters.index(letter) + shift
#   letters = letters.cycle
#   shift = shift % 52 if shift.negative?
#   shift.times { letters.next }
#   return letters.next
# end

# p crypto("eBIIL TLOIA! ", -127)
# p test("e",-127)

# letters[(letters.index(letter)) + shift]


def crypto(text, shift)
  text.to_s.strip.tr('a-zA-Z', (1..26).to_a.join)
end

p crypto("eBIIL TLOIA! ", -127)
