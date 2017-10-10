# Local variables

foobar
_foobar

# Global Variable

$foobar

# Constants

FOOBAR = 'abc'

class Foo
  BAR = 123
end
puts Foo::BAR
# => 123


# Pseudo Variables

self # Execution context of the current method.
nil # The sole-instance of the NilClass class. Expresses nothing.
true # The sole-instance of the TrueClass class. Expresses true.
false # The sole-instance of the FalseClass class. Expresses false.


# These are contents of capturing groups for regular expression matches.
# They are local to the current thread and stack frame:
$1, $2 ... $9
