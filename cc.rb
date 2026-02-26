# frozen_string_literal: true

print 'Enter text > '
user_text = gets
print 'Enter shift > '
user_shift = gets

def caesar_ruby_style(text, shift)
  source = ('a'..'z').to_a.join + ('A'..'Z').to_a.join

  shifted_lower = ('a'..'z').to_a.rotate(shift).join + ('A'..'Z').to_a.rotate(shift).join

  destination = shifted_lower

  text.tr(source, destination)
end

puts caesar_ruby_style(user_text, user_shift.to_i)
