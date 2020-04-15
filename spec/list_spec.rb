require 'List'

describe List do 
    it "is initially empty" do
        expect(subject.head).to eq(nil)
    end

    describe "#append" do
        context "When the list is empty" do
            before {subject.append(1)}

            it "sets the first element" do
                expect(subject.head.data).to eq(1)
            end

            it "does not add a second element" do
                expect(subject.head.nextNode).to eq(nil)
            end
        end

        context "When the list has one element" do
            before {
                subject.append(1)
                subject.append(2)
            }

            it "sets the second element" do
                expect(subject.head.nextNode.data).to eq(2)
            end

            it "does not add a third element" do
                expect(subject.size).to eq(2)
            end
        end
    end

    describe "#size" do
        context "When the list is empty" do
            it "size returns 0" do
                expect(subject.size).to eq(0)
            end
        end
    
        context "When the list has one element" do
            before{subject.append(83)}
            it "size returns 1" do
                expect(subject.size).to eq(1)
            end
        end
    
        context "When the list has two element" do
            before{subject.append(83)}
            it "size returns 1" do
                expect(subject.size).to eq(1)
            end
        end
    end

    describe "#prepend" do
        before {subject.prepend(1)}
        context "Testing prepend function when head = nil" do
            it "Should set list.head to _node" do
                expect(subject.head.data).to eq(1)
                expect(subject.head.nextNode).to eq(nil)
            end
        end
    end
end