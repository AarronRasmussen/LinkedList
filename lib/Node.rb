class Node
    attr_accessor :data, :nextNode
    def initialize(data = nil, nextNode = nil)
        @data = data
        @nextNode = nextNode
    end
end