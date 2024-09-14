// Merge Sort
 
let arr = [9,7,5,3,1,8,6,4,2,0]
print(mergeSort(arr))
 
func mergeSort(_ arr: [Int]) -> [Int] {
    if arr.count <= 1 {
        return arr
    }
    let middleIndex = arr.count / 2
    let leftArray = mergeSort(Array(arr[0 ..< middleIndex]))
    let rightArray = mergeSort(Array(arr[middleIndex ..< arr.count]))
    return merge(leftArray, rightArray)
}
 
func merge(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var sortedArray : [Int] = []
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] < rightArray[rightIndex] {
            sortedArray.append(leftArray[leftIndex])
            leftIndex = leftIndex + 1
        } else {
            sortedArray.append(rightArray[rightIndex])
            rightIndex = rightIndex + 1
        }
    }
    while leftIndex < leftArray.count {
        sortedArray.append(leftArray[leftIndex])
        leftIndex = leftIndex + 1
    }
    while rightIndex < rightArray.count {
        sortedArray.append(rightArray[rightIndex])
        rightIndex = rightIndex + 1
    }
    return sortedArray
}