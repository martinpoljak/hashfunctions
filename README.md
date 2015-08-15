General Purpose Hash Functions Gem
==================================

**hashfunctions** is a [Ruby][1] gem which implements 
11 fast hash functions for general purpose non-cryptographic use 
implemented originally by [Arash Partow][2]. Part of this library is 
the native C [**hashfunctions-extension**][3] extension which is used
if it's installed as gem.

Some example:

```ruby
require "general-hash-functions"
hash = GeneralHashFunctions::djbhash("some string")
# will return the 395673328
```
    
See description of all contained functions at Arash Partow's page:
http://www.partow.net/programming/hashfunctions/index.html#AvailableHashFunctions


Copyright
---------

Copyright &copy; 2002 [Arash Partow][2].<br> 
Copyright &copy; 2012 &ndash; 2015 [Martin poljak][4].<br>
See `LICENSE.txt` for further details.

[1]: http://www.ruby-lang.org/en/
[2]: http://www.partow.net/
[3]: http://github.com/martinkozak/hashfunctions-extension
[4]: http://www.martinkozak.net/
s
