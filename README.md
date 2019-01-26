## Is it a C project or a Haskell project?

Look at this, you can mix C and Haskell. The main program is C, but
other parts can be Haskell. Useful when automatic memory management,
great numeric libraries, unicode support, or parsing is useful for
some parts of the code. Then other parts can be C where an imperative
algorithm is the easiest way to do something, or where memory should be
managed more carefully.

This approach doesn't even use Cabal, just a portable makefile and the
functionality of GHC itself. The Haskell code has access to a useful set of
[libraries](https://downloads.haskell.org/~ghc/latest/docs/html/libraries/index.html)
which ships with every GHC installation. This includes a Haskell
interface to POSIX.1-2008.

By linking dynamically to the GHC runtime, the executable can stay
small at only a few kilobytes.
