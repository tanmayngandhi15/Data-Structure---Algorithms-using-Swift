// Quick Sort
 
let arr = [9,7,5,3,1,8,6,4,2,0]

print(quickSort(arr))
 
func quickSort(_ arr: [Int]) -> [Int] {

    if arr.count <= 1 {

        return arr

    }

    let middleNo = arr[arr.count / 2]

    let smallerArray = arr.filter { $0 < middleNo }

    let middleArray = arr.filter { $0 == middleNo }

    let greaterArray = arr.filter { $0 > middleNo }

    return quickSort(smallerArray) + middleArray + quickSort(greaterArray)

}
 