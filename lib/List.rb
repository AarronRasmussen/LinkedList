require 'Node'

class List
    attr_accessor :head
    def initialize()
        @head = nil
    end

    def prepend(data)
        _tNode = Node.new(data)

        if(@head.nil?)
            @head = _tNode
            return
        end

        _tNode.nextNode = @head
        @head = _tNode
    end

    def append(data)
        _tNode = Node.new(data)

        if(@head.nil?)
            @head = _tNode
            return
        end

        _nPtr = @head

        until _nPtr.nextNode.nil?
            _nPtr = _nPtr.nextNode
        end

        _nPtr.nextNode = _tNode
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

    def printList()
        _tNode = @head
        until _tNode.nil?
            p _tNode.data
            _tNode = _tNode.nextNode
        end
    end

end