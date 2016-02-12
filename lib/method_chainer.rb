class MethodChainer
    attr_reader :content

    def initialize(str)
        @content = str
    end

    def reverse!
        @content = @content.reverse()
        # self -- notice the difference when commented out
        # What is returned?
    end

    def caps!
        @content = @content.upcase()
        self
    end

    def double!
       @content += @content
       self
    end
end


# string = MethodChainer.new("apple")
