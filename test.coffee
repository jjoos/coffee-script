
# No outer closure

### Both block ###

# and line comments get passed

# Arrow functions
expression = (value) => value.property
test =
  property: 'me'
if expression(test) != 'me'
  raise 'arrow functions not working'

# Rest and splat working, although rest only works as the last parameter
test = (check_values, test_values...) ->
  for check, index in check_values
    raise 'x' if check != test_values[index]
test ['a',1], ['a', 1]...

# List comprehensions
