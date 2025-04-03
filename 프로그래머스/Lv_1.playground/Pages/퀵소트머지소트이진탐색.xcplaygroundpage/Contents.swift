import Foundation

// MARK: - Merge Sort
func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let center = array.count / 2
    let left = Array(array[0..<center])
    let right = Array(array[center..<array.count])
    
    func merge(_ left: [Int], _ right: [Int]) -> [Int] {
        var left = left
        var right = right
        var result = [Int]()
        
        while !left.isEmpty && !right.isEmpty {
            if left[0] < right[0] {
                result.append(left.removeFirst())
            } else {
                result.append(right.removeFirst())
            }
        }
        // left array 요소가 남은 경우
        if !left.isEmpty {
            result.append(contentsOf: left)
        }
        // right array 요소가 남은 경우
        if !right.isEmpty {
            result.append(contentsOf: right)
        }
        return result
    }
    
    return merge(mergeSort(left), mergeSort(right))
}
// MARK: - Quick Sort
func quickSort(_ array: [Int]) -> [Int] {
    guard let first = array.first, array.count > 1 else { return array }
    
    let pivot = first
    let left = array.filter { $0 < pivot }
    let right = array.filter { $0 > pivot }
    
    return quickSort(left) + [pivot] + quickSort(right)
}
print(quickSort([6, 5, 3, 1, 8, 7, 2, 4]))


// MARK: - Binary Search
// 재귀함수
func binarySerch(_ array: [Int], num: Int) -> Bool {
    if array.count == 1 {
        return array[0] == num
    }
    let mid = array.count / 2
    
    if array[mid] == num { return true }
    
    let range = array[mid] > num ? (0..<mid) : ((mid+1)..<array.count)
    return binarySerch(Array(array[range]), num: num)
}
// 반복문
func binarySearchLoop(_ array: [Int], num: Int) -> Bool {
    var start = 0
    var end = array.count - 1
    
    while start <= end {
        let mid = (start + end) / 2
        if array[mid] == num { return true }
        if array[mid] > num {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return false
}
