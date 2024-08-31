var arr = [2,7,5,9,3,8,6,1,4]
 
for i in 0 ..< arr.count {
    var minIndex = i
    for j in i+1 ..< arr.count {
      if arr[j] < arr[minIndex] {
          minIndex = j
      }   
    }
    if i != minIndex {
    arr[i] = arr[i] + arr[minIndex]
    arr[minIndex] = arr[i] - arr[minIndex]
    arr[i] = arr[i] - arr[minIndex]
    }
}
 
print(arr)