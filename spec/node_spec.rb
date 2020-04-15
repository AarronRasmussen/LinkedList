require 'Node'

describe Node do
        it "is initially created" do
            expect(subject.data).to eq(nil)
            expect(subject.nextNode).to eq(nil)
        end

    describe "#init" do
        context "When created with a data value of 1" do
            subject {Node.new(1,nil)}
            it "sets the value of data to 1" do
                expect(subject.data).to eq(1)
            end
        end
    end

    describe "#init" do
        context "When created with a nextNode" do
            let(:_n) { Node.new(2) }
            subject {Node.new(0, _n)}
            it "sets the value of nextNode" do
                expect(subject.nextNode).to eq(_n)
            end
        end
    end
end