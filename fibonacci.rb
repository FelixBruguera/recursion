def fibs(n)
    start_value = 0
    current_value = 1
    result = [0,1]
    (n-2).times do
        result.push(start_value+current_value)
        start_value,current_value = current_value,result[-1]
    end
    p result
end

fibs(8)

def fibs_rec(n)
    return [0,1] if n < 3
    a = fibs_rec(n-1)
    a.push(a[n -2] + a[n - 3])
end
p fibs_rec(8)
