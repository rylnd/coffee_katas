Y = (func) ->
  (
    (x) -> x(x)
  )(
    (y) ->
      func (z) -> y(y)(z)
  )

root = exports ? window
root.Y = Y
