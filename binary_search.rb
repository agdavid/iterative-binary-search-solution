# given a number and a collection, find the number with least time complexity
def find_target(target, array)

    # create "bookends" - the start and finish of the search range
    floor_index = -1
    ceiling_index = array.length

    # always need to make sure at least one value between bookends
    while floor_index+1 < ceiling_index

        # set values to see if target is in range
        distance = ceiling_index - floor_index
        half_distance = distance/2
        guess_index = floor_index + half_distance
        guess_value = array[guess_index]

        if guess_value == target
            return true
        elsif guess_value > target 
            # know target is in lower half, reset ceiling_index
            ceiling_index = guess_index    
        else
            # know target is in upper half, reset floor_index
            floor_index = guess_index
        end 
    end

    return false

end

# the above asks "How many times do we need to cut n (the array) in 1/2 before we get 1 result"
# this is time complexity of O(log2n)