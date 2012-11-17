class CartesianProduct
  include Enumerable
  attr_accessor :a, :b
  def initialize(a,b)
    @a = a
    @b = b
  end

  def each
    i=0
    while @a[i]
      j=0
      while @b[j]
        yield [@a[i],@b[j]]
        j+=1
      end
      i+=1
    end
  end

end
