class GridPoints
  def initialize(*gps)
    @gps = gps
  end

  def include?(target_gp)
    @gps.each do |gp|
      return true if gp == target_gp
    end
    false
  end
end
