/*
 (오름차순 기준)
 ex) [6,5,3,1,8,7,2,4]
 (1) 위의 예시를 보면 1 ~ 8까지의 원소들이 랜덤으로 배치되어 있다. 원소는 8개이기 때문에, 길이가 1인 리스트로 쪼개려면 총 3번의 Divide가 있으면 된다.

 (2) 3번의 Divide를 하면 6 5 3 1 8 7 2 4로 나누어지는데, 이것들을 차례로 병합하면서 정렬을 이루어 나가는 것이다.

 (3) 첫 번째 병합은 다음과 같이 이루어진다.
 6과 5를 비교 / 3과 1을 비교 / 8과 7을 비교 / 2와 4를 비교한다.
 그러면 5, 6 / 1, 3 / 7, 8 / 2, 4 로 1차 정렬이 완료된다.

 (4) 두 번째 병합은 5, 6 - 1, 3 / 7, 8 - 2, 4를 정렬한다.
 먼저 5와 1을 비교한다. 1이 먼저 위치해야 하니 1을 둔다. 그다음에는 5와 3을 비교한다. 3이 먼저 와야 하니 3이 1 뒤에 위치한다. 그다음은 5, 6은 이미 정렬되어 있으니 순서대로 위치한다. 그러면 5, 6, 1, 3은 [1, 3, 5, 6]으로 정렬이 된다.

 마찬가지로 우변도 정렬 과정을 거치면 [2, 4, 7, 8]이 된다.

 두 번째 병합을 거친 결과, [1, 3, 5, 6, 2, 4, 7, 8]이 된다.

 (5) 세 번째 병합은 1, 3, 5, 6 / 2, 4, 7, 8로 나누어서 병합을 시행한다.

 먼저 1, 2를 비교한다. 1이 작기 때문에 먼저 위치한다.
 그 다음은 3과 2를 비교한다. 2가 작기 때문에 2가 위치한다.
 그다음은 3과 4를 비교한다. 3이 작기 때문에 3이 위치한다.
 4와 5를 비교한다.
 .....
 마지막으로 우변에만 7, 8이 남게 된다. 정렬된 리스트에 그 두 개의 원소를 붙이면
 [1, 2, 3, 4, 5, 6, 7, 8]로 정렬이 되게 된다.
 */

import Foundation

func mergeSort(_ array: [Int]) -> [Int] {
    if array.count <= 1 { return array }
    let center = array.count / 2
    let left = Array(array[0..<center])
    let right = Array(array[center..<array.count])
    
    print(left)
    print(right)
    
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
        
        // 왼쪽 배열 요소가 남은 경우
        if !left.isEmpty {
            result.append(contentsOf: left)
        }
        
        // 오른쪽 배열 요소가 남은 경우
        if !right.isEmpty {
            result.append(contentsOf: right)
        }
        
        return result
    }
    
    return merge(mergeSort(left), mergeSort(right))
}
let newArray = mergeSort([6, 5, 3, 1, 8, 7, 2, 4])
print("merge sort - \(newArray)")
