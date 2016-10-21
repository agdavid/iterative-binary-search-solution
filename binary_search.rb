# given a number and a collection, find the number with least time complexity
def find_target(target, array)

    # create "bookends" - the start and finish of the search range
    floor_index = -1
    ceiling_index = array.length

    # always need to make sure at least one value between bookends
    while floor_index+1 < array.length

        # set values to see if target is in range
        distance = ceiling_index - floor_index
        half_distance = distance/2
        guess_index = floor_index + half_distance
        guess_value = array[guess_index] 

    end

end