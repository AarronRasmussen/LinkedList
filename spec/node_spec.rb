require 'Node'

RSpec.describe Node, "#init" do
    context "Tests class init function." do
        it "Tests node object created node with default values data: nil nextNode: nil." do
            _node = Node.new()
            expect(_node.data).to eq(nil)
            expect(_node.nextNode).to eq(nil)
        end
    end
end

RSpec.describe Node, "#init_data_param" do
    context "Tests class init function." do
        it "Tests that Node object is created with correct data paramter: 1." do
            _node = Node.new(1,nil)
            expect(_node.data).to eq(1)
        end
    end
end

RSpec.describe Node, "#init_nodePtr_param" do
    context "Tests class init function." do
        it "Tests node object is created with correct nextNode pointer." do
            _node1 = Node.new(1)
            _node0 = Node.new(0, _node1)
            expect(_node0.nextNode).not_to eq(nil)
        end
    end
end