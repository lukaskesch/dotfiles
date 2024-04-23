
local function print_number(number) 
    print(number)
end

local function add_three_numbers(num1, num2, num3) 
    return num1 + num2 + num3
end

local function are_numbers_same(num1, num2) 
    if num1==num2 then
        return true
    else
        return false
    end
end

local my_number = 5

my_number = add_three_numbers(my_number, 1, 0)

print_number(my_number)

print(are_numbers_same(my_number, 6))

