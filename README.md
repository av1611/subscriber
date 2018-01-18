# subscriber
An initial implementation of the subscriber profiles using S6 approach of R language.
According to some benchmarks, R6 provides the most flexible way of data structures implementation using object-oriented techniques. Among those of R language, it's R6 objects take as much memory as the plain S3 objects (for simplicity, functions), though they call for some tweaking too.
These data structures have been made in the form of a plain R package. As a result, a number of things intended to make the developer life to be easier (uncluding that boring setwd(...), install.packages(...), library(...)), are implemented right out of the box.
