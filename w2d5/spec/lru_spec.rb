require "lru"

describe LRUCache do
  describe "Variable size cache, that clears the least recently used" do
    context "When initialized with a size of 4, and given 6 elements" do
      subject(:lru) { LRUCache.new(4) }
      before(:each) { lru.add(1) }
      before(:each) { lru.add(2) }
      before(:each) { lru.add(3) }
      before(:each) { lru.add(4) }
      before(:each) { lru.add(3) }
      before(:each) { lru.add(5) }

      it "shows an array of only 4 elements" do
        expect(lru.show.length).to eq(4)
        expect(lru.count).to eq(4)
      end

      it "removes the least recently used" do
        expect(lru.show).not_to include(1)
      end

      it "reorders previously seen elements" do
        expect(lru.show).to eq([2, 4, 3, 5])
      end
    end
  end
end
