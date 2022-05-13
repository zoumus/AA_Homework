# quadratic
def bigest_fish(arr_fishes)

    arr_fishes.each_with_index do |fish1, i|
        max_length = true
        arr_fishes.each_with_index do |fish2, j|
            if j > i && fish2.length > fish1.length
                fish1, fish2 = fish2, fish1
                max_length = false
            end
        end
    end
    arr_fishes.last
end
p bigest_fish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh'])
# #  "fiiiissshhhhhh"

# n log n search
    
def merge_sort(arr_fish)
    return arr_fish if arr_fish.length <= 1
  
    mid = arr_fish.length / 2
    sorted_left = arr_fish[0...mid]
    sorted_right = arr_fish[mid..-1]
  
    merge(sorted_left, sorted_right)
end
  
def merge(left, right)
    merged = []
  
    until left.empty? || right.empty?
        if left.first.length < right.first.length
            merged << left.shift
        else
            merged << right.shift
        end
    end
    merged.concat(left)
    merged.concat(right)
    return merged.last
end
# p merge_sort(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
# 'fiiiissshhhhhh'])
#  "fiiiissshhhhhh"

def clever_octopus(fish_arr)
    big_fish = fish_arr.first

    fish_arr.each_with_index do |fish, i|
        big_fish = fish if fish.length > big_fish.length
    end
    big_fish
end
# p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
