var arr = [2,7,5,9,3,8,6,1,4]
 
for i in 0 ..< arr.count {
    for j in i+1 ..< arr.count {
        if arr[i] > arr[j] {
            arr[i] = arr[i] + arr[j]
            arr[j] = arr[i] - arr[j]
            arr[i] = arr[i] - arr[j]
        }
    }
}
 
print(arr)