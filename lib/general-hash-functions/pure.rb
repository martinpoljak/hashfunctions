#
#**************************************************************************
#*                                                                        *
#*          General Purpose Hash Function Algorithms Library              *
#*                                                                        *
#* Author: Arash Partow - 2002                                            *
#* URL: http://www.partow.net                                             *
#* URL: http://www.partow.net/programming/hashfunctions/index.html        *
#*                                                                        *
#* Copyright notice:                                                      *
#* Free use of the General Purpose Hash Function Algorithms Library is    *
#* permitted under the guidelines and in accordance with the most current *
#* version of the Common Public License.                                  *
#* http://www.opensource.org/licenses/cpl1.0.php                          *
#*                                                                        *
#**************************************************************************
#

module GeneralHashFunctionsPure

  def self.rshash( str )
    a    = 63689
    b    = 378551
    hash = 0
    str.each_byte{ |i| 
      hash = (hash * a + i) & 0xffffffff
      a = (a * b) & 0xffffffff
    }
    return hash
  end


  def self.jshash( str )
    hash = 1315423911
    str.each_byte{ |i| 
      hash ^= ( ( hash << 5 ) + i + ( hash >> 2 ) ) & 0xffffffff
    }
    return hash
  end


  def self.elfhash( str )
    hash = 0
    x = 0
    str.each_byte{ |i|
      hash = (hash << 4) + i
      if  (x = hash & 0xF0000000) != 0
        hash ^= (x >> 24)
        hash &= ~x
      end
      hash &= 0xffffffff
    }
    return hash
  end


  def self.bkdrhash( str )
    seed = 131    # 31 131 1313 13131 131313 etc..
    hash = 0
    str.each_byte{ |i|
      hash = (( hash * seed ) + i) & 0xffffffff
    }
    return hash
  end


  def self.sdbmhash( str )
    hash = 0
    str.each_byte{ |i|
      hash = (i + ( hash << 6 ) + ( hash << 16 ) - hash) & 0xffffffff
    }
    return hash
  end


  def self.djbhash( str )
    hash = 5381
    str.each_byte{ |i|
      hash = (((hash << 5) + hash) + i) & 0xffffffff
    }
    return hash
  end


  def self.dekhash( str )
    hash = str.length
    str.each_byte{ |i|
      hash = (((hash << 5) ^ (hash >> 27)) ^ i) & 0xffffffff
    }
    return hash
  end


  def self.bphash( str )
    hash = 0
    str.each_byte{ |i|
      hash = (hash << 7 ^ i) & 0xffffffff
    }
    return hash
  end


  def self.fnvhash( str )
    fnv_prime = 0x811C9DC5
    hash = 0
    str.each_byte{ |i|
      hash *= fnv_prime
      hash ^= i
      hash &= 0xffffffff
    }
    return hash
  end


  def self.aphash( str )
    raise NotImplementedError::new("Arash Partow's hash is provided by C extension only.")
  end
  
end

