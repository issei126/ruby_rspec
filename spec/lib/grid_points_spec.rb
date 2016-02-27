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
end
