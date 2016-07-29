library(R6)

IFoo <- R6Class("IFoo",
  public = list(foo = function() stop("I'm the inferace method"))
)
BaseClass <- R6Class("BaseClass",
  public = list(foo = function(n = 1) private$x[1:n])
)
Foo <- R6Class("Foo", inherit = c(IFoo, BaseClass),
  private = list(x = letters)
)
