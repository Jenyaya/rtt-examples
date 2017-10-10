module Dojo
  A = 4
  module Kata
    B = 8
    module Roulette
      class ScopeIn
        def push
          15
        end
        def topmost_constant
          ::A
        end
      end
    end
  end
end

A = 16
B = 23
C = 42

puts "A - #{A}" # => A - 16
puts "Dojo::A - #{Dojo::A}" # => Dojo::A - 4

puts "B - #{B}" # => B - 23
puts "Dojo::Kata::B - #{Dojo::Kata::B}" # => Dojo::Kata::B - 8

puts "C - #{C}" # => C - 42
puts "Dojo::Kata::Roulette::ScopeIn.new.push =
           #{Dojo::Kata::Roulette::ScopeIn.new.push}"
# => Dojo::Kata::Roulette::ScopeIn.new.push = 15

puts "Dojo::Kata::Roulette::ScopeIn.new.topmost_constant =
           #{Dojo::Kata::Roulette::ScopeIn.new.topmost_constant}"
# => Dojo::Kata::Roulette::ScopeIn.new.topmost_constant = 16
