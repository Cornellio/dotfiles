
def binary_search(list, target):
    low = 0
    high = len(list) - 1

    while low <= high:
        mid = (low + high) // 2
        guess = list[mid]
        if guess == target:
            return '1 hit', str(list[mid])
        if guess > target:
            high = mid - 1
        if guess < target:
            low = mid + 1
    return None


alist = [1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 18, 32, 55, 57]
blist = [1, 2, 3, 4, 5, 6]

print(binary_search(alist, 11))
