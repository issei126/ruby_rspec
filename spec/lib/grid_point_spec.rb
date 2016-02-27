describe GridPoint do
  describe '#new' do
    context 'x座標 に 4 , y座標 に 7 を与えて 格子点 を生成した時' do
      let(:gp) { GridPoint.new(4,7) }

      describe '#x' do
        it ' x座標 は 4' do
          expect(gp.x).to eq 4
        end
      end

      describe '#y' do
        it ' y座標 は 7' do
          expect(gp.y).to eq 7
        end
      end

      describe '#notation' do
        it '文字列表記 は "(4,7)"' do
          expect(gp.notation).to eq '(4,7)'
        end
      end
    end

    context 'x座標 に 2 , y座標 に 5 を与えて 格子点 を生成した時' do
      let(:gp) { GridPoint.new(2,5) }
      describe '#notation' do
        it '文字列表記 は "(2,5)"' do
          expect(gp.notation).to eq '(2,5)'
        end
      end
    end
  end

  describe '#==' do
    context '(4,7) と (4,7) の時' do
      let(:gp1) { GridPoint.new(4,7) }
      let(:gp2) { GridPoint.new(4,7) }
      it 'trueを返す' do
        expect(gp1 == gp2).to be_truthy
      end
    end
    context '(2,5) と (4,7) の時' do
      let(:gp1) { GridPoint.new(2,5) }
      let(:gp2) { GridPoint.new(4,7) }
      it 'falseを返す' do
        expect(gp1 == gp2).to be_falsy
      end
    end
  end

  describe '#!=' do
    context '(4,7) と (4,7) の時' do
      let(:gp1) { GridPoint.new(4,7) }
      let(:gp2) { GridPoint.new(4,7) }
      it 'falseを返す' do
        expect(gp1 != gp2).to be_falsy
      end
    end

  end

  describe '#neighbor?' do
    subject { gp1.neighbor? gp2 }
    context '(4,7) と (3,7) の時' do
      let(:gp1) { GridPoint.new(4,7) }
      let(:gp2) { GridPoint.new(3,7) }
      it 'trueを返す' do
        expect(subject).to be_truthy
      end
    end

    context '(4,7) と (4,6) の時' do
      let(:gp1) { GridPoint.new(4,7) }
      let(:gp2) { GridPoint.new(4,6) }
      it 'trueを返す' do
        expect(gp1.neighbor? gp2).to be_truthy
      end
    end

    context '(4,7) と (3,8) の時' do
      let(:gp1) { GridPoint.new(4,7) }
      let(:gp2) { GridPoint.new(3,8) }
      it 'falseを返す' do
        expect(gp1.neighbor? gp2).to be_falsy
      end
    end

    context '(4,7) と (4,7) の時' do
      let(:gp1) { GridPoint.new(4,7) }
      let(:gp2) { GridPoint.new(4,7) }
      it 'falseを返す' do
        expect(gp1.neighbor? gp2).to be_falsy
      end
    end
  end
end
