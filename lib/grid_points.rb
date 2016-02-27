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

  def connected?
    @gps.each do |i|
      i_is_connect = false
      @gps.each do |j|
        i_is_connect = true if i.neighbor? j
      end
      return false unless i_is_connect
    end
    #gp = @gps.shift
    #@gps.each do |target_gp|
    #  if gp.neighbor? target_gp
    #    gp = @gps.shift
    #  else
    #    #@gps.each do |rest_gp|
    #    #  puts "rest_gp: #{rest_gp.notation}"
    #    #  puts "gp: #{gp.notation }"
    #    #  return false unless gp.neighbor?(rest_gp)
    #    #end
    #    return false
    #  end
    #end
  end

  def traversable?
    gp = @gps.shift
    @gps.each do |target_gp|
      puts "gp: #{gp.notation }"
      puts "target_gp: #{target_gp.notation}"
      puts "@gps: #{@gps.to_s}"
      if gp.neighbor? target_gp
        gp = @gps.shift
      else
        #@gps.each do |rest_gp|
        #  puts "rest_gp: #{rest_gp.notation}"
        #  puts "gp: #{gp.notation }"
        #  return false unless gp.neighbor?(rest_gp)
        #end
        return false
      end
    end
    return true
  end

  def count
    @gps.size
  end
end
