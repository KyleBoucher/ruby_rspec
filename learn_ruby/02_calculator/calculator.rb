def add a,b
    return a + b
end

def subtract a,b
    return a - b
end


def sum nums
    total = 0
    nums.each{|i| total += i}
    return total
end

def multiply *args
    total = 1
    args.each {|i| total *= i}
    return total
end

def power base,exp
    return base**exp
end

def factorial n
    if n == 0
        return 1
    else
        total = 1;
        n.times{|i| total *= i+1}
        return total
    end
end