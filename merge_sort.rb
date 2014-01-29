class MergeSort

  def merger(up,down)
    ordered = Array.new
    until up.empty? || down.empty?
      if up.first <= down.first
        ordered << up.shift
      else
        ordered << down.shift
      end
    end
    return ordered + up + down
  end

  def sorter(dice)
    if dice.size <= 1
      return dice
    end
    chop = dice.slice!((dice.size/2).round, dice.size)
    return merger(sorter(dice), sorter(chop))
  end
end


mailman = MergeSort.new

puts mailman.sorter([567,35,12,14,15,63,1,62,5,78,34,235,25,6,7,3,799,3445,6,4,558,678,8,6,8,77,44,33,22,53,63,13])
