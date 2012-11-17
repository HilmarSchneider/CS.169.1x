class Class
  def attr_accessor_with_history(*args)

    args.each do |arg|
      self.class_eval %Q(
        def #{arg}
          @#{arg}
        end)
      self.class_eval %Q(
        def #{arg}=(val)
          @#{arg}=val
          unless @#{arg}_history
            @#{arg}_history = []
            @#{arg}_history << nil
          end
          @#{arg}_history << #{arg}
        end)
      self.class_eval %Q(
         def #{arg}_history
          @#{arg}_history
        end)
    end
  end
end

class Foo
  attr_accessor_with_history :bar
end
