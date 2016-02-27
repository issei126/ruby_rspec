describe GridPoints do
  describe '#include?' do
    context '(1,1), (2,2)を含む格子点集合の時' do
      it '(1,1) を含む' do
        gp1 = GridPoint.new(1,1)
        gp2 = GridPoint.new(2,2)
        gps = GridPoints.new(gp1, gp2)
        expect(gps.include?(gp1)).to be_truthy
      end

      it '(3,3) を含まない' do
        gp1 = GridPoint.new(1,1)
        gp2 = GridPoint.new(2,2)
        gp3 = GridPoint.new(3,3)
        gps = GridPoints.new(gp1, gp2)
        expect(gps.include?(gp3)).to be_falsy
      end
    end
  end

  describe '#connected?' do
    context '(1,1), (1,2)を含む格子点集合の時' do
      it 'trueがかえってくる' do
        gp1 = GridPoint.new(1,1)
        gp2 = GridPoint.new(1,2)
        gps = GridPoints.new(gp1, gp2)
        expect(gps.connected?).to be_truthy
      end
    end

    context '(1,1), (2,2), (2,1)を含む格子点集合の時' do
      it 'trueがかえってくる' do
        gp1 = GridPoint.new(1,1)
        gp2 = GridPoint.new(2,2)
        gp3 = GridPoint.new(2,1)
        gps = GridPoints.new(gp1, gp2, gp3)
        expect(gps.connected?).to be_truthy
      end
    end

    context '(1,1), (1,2), (2,2), (2,1)を含む格子点集合の時' do
      it 'trueがかえってくる' do
        gp1 = GridPoint.new(1,1)
        gp2 = GridPoint.new(1,2)
        gp3 = GridPoint.new(2,2)
        gp4 = GridPoint.new(2,1)
        gps = GridPoints.new(gp1, gp2, gp3, gp4)
        expect(gps.connected?).to be_truthy
      end
    end

    context '(1,1), (2,2), (1,2), (2,1)を含む格子点集合の時' do
      it 'trueがかえってくる' do
        gp1 = GridPoint.new(1,1)
        gp2 = GridPoint.new(2,2)
        gp3 = GridPoint.new(1,2)
        gp4 = GridPoint.new(2,1)
        gps = GridPoints.new(gp1, gp2, gp3, gp4)
        expect(gps.connected?).to be_truthy
      end
    end

    context '(1,1), (2,2), (2,1), (2,0)を含む格子点集合の時' do
      it 'trueがかえってくる' do
        gp1 = GridPoint.new(1,1)
        gp2 = GridPoint.new(2,2)
        gp3 = GridPoint.new(2,1)
        gp4 = GridPoint.new(2,0)
        gps = GridPoints.new(gp1, gp2, gp3, gp4)
        expect(gps.connected?).to be_truthy
      end
    end

    context '(1,1), (2,2)を含む格子点集合の時' do
      it 'falseがかえってくる' do
        gp1 = GridPoint.new(1,1)
        gp2 = GridPoint.new(2,2)
        gps = GridPoints.new(gp1, gp2)
        expect(gps.connected?).to be_falsy
      end
    end

    context '(0,1), (2,2), (2,1)を含む格子点集合の時' do
      it 'falseがかえってくる' do
        gp1 = GridPoint.new(0,1)
        gp2 = GridPoint.new(2,2)
        gp3 = GridPoint.new(2,1)
        gps = GridPoints.new(gp1, gp2, gp3)
        expect(gps.connected?).to be_falsy
      end
    end
    
    context '(0,0), (1,0), (2,1)を含む格子点集合の時' do
      it 'falseがかえってくる' do
        gp1 = GridPoint.new(0,0)
        gp2 = GridPoint.new(1,0)
        gp3 = GridPoint.new(2,1)
        gps = GridPoints.new(gp1, gp2, gp3)
        expect(gps.connected?).to be_falsy
      end
    end
  end

  describe '#count' do
    context '3つの格子点を含む格子点集合の時' do
      it '3を返す' do
        gp1 = GridPoint.new(0,0)
        gp2 = GridPoint.new(1,0)
        gp3 = GridPoint.new(2,1)
        gps = GridPoints.new(gp1, gp2, gp3)
        expect(gps.count).to eq 3
      end
    end

    context '2つの格子点を含む格子点集合の時' do
      it '2を返す' do
        gp1 = GridPoint.new(0,0)
        gp2 = GridPoint.new(1,0)
        gps = GridPoints.new(gp1, gp2)
        expect(gps.count).to eq 2
      end
    end
  end

  describe '#traversable?' do
    context '(0,0), (1,0), (2,0), (3,0)を含む格子点集合の時' do
        gp1 = GridPoint.new(0,0)
        gp2 = GridPoint.new(1,0)
        gp3 = GridPoint.new(2,0)
        gp4 = GridPoint.new(3,0)
        gps = GridPoints.new(gp1, gp2, gp3, gp4)

      it 'trueを返す' do
        expect(gps.traversable?).to be_truthy
      end
    end

    context '(0,0), (1,0), (2,0), (2,2)を含む格子点集合の時' do
        gp1 = GridPoint.new(0,0)
        gp2 = GridPoint.new(1,0)
        gp3 = GridPoint.new(2,0)
        gp4 = GridPoint.new(2,2)
        gps = GridPoints.new(gp1, gp2, gp3, gp4)

      it 'falseを返す' do
        expect(gps.traversable?).to be_falsy
      end
    end
  end
end
