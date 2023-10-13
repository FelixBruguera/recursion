def merge_sort(array)
    def merge(left,right)
      result = []
      while left.length > 0 && right.length > 0
        if left[0] < right[0]
          result.push(left[0])
          left.shift
        else
          result.push(right[0])
          right.shift
        end
      end
      while left.length > 1
        if left[0] < left[1]
          result.push(left[0])
          left.shift
        else
          result.push(left[1])
          left.delete_at(1)
        end
      end
      while right.length > 1
        if right[0] < right[1]
          result.push(right[0])
          right.shift
        else
          result.push(right[1])
          right.delete_at(1)
        end
      end
      if left.length == 1 then result.push(left[0]) end
      if right.length == 1 then result.push(right[0]) end
    result.flatten
    end   
      return array if array.length == 1
      left = []
      right = []
      array.each_with_index do |x, i|
        i < array.length/2 ? left.push(x) : right.push(x)
      end
      left = merge_sort(left)
      right = merge_sort(right)
    
      merge(left,right)
    end
    p merge_sort([12,10,11,8,6,7,4,9,5,3,1,2])