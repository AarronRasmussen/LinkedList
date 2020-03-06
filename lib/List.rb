require 'Node'

class List
    attr_accessor :head
    def initialize()
        @head = nil
    end

    def append(data)
    end

    def size()
        _tmpNode = @head
        _counter = 0

        until _tmpNode.nil?
            _counter += 1
            _tmpNode = _tmpNode.nextNode         
        end

        return _counter
    end
end