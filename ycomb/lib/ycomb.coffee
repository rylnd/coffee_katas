Y = (func) ->
  (
    (x) -> x(x)
  )(
    (x) ->
      func (v) -> x(x)(v)
  )

window.Y = Y
