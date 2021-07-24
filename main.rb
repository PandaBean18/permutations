def permutations(arr, start = 0, stop = arr.length)
    return [arr] if start == stop
    i = 0
    array = []
    while i < stop
        arr1 = arr.deep_dup
        if i <= start
            arr1[start], arr1[i] = arr1[i], arr1[start]
            permutations(arr1, start + 1, stop).each do |subarr|
                array << subarr
            end
        end
        i += 1
    end
    return array
end
