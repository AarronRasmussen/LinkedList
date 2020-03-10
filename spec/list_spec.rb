require 'List'

RSpec.describe List, "#init" do
    context "Tests class init function." do
        it "Tests that list object was created with default values." do
            _list = List.new()
            expect(_list.head).to eq(nil)
        end
    end
end

RSpec.describe List, "#append_function" do
    context "Testing append function when head = nil." do
        it "Should set list.head to _node if list.head is nil." do
            _list = List.new()
            _list.append(1)
            expect(_list.head.data).to eq(1)
            expect(_list.head.nextNode).to eq(nil)
        end
    end
end

RSpec.describe List, "#size_function_when_empty" do
    context "Testing size function when list is empty." do
        it "Returns the size of the list" do
            _list = List.new()
            _size = _list.size()
            expect(_size).to eq(0)
        end
    end
end

RSpec.describe List, "prepend_function" do
    context "Testing prepend function when head = nil" do
        it "Should set list.head to _node" do
            _list = List.new()
            _list.prepend(1)
            expect(_list.head.data).to eq(1)
            expect(_list.head.nextNode).to eq(nil)
        end
    end
end