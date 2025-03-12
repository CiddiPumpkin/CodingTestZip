/*
 [이진 탐색(Binary Search)]
 -데이터의 정렬 확인
 이진 탐색을 수행하기 전에 데이터가 정렬되어 있는지 확인해야 합니다. 이진 탐색은 정렬된 데이터에서만 사용할 수 있습니다. 따라서, 정렬되지 않은 데이터라면 정렬을 먼저 수행해야 합니다.
 
 -이진 탐색 함수 구현
 Swift에서는 배열(Array)이나 컬렉션(Collection) 타입을 사용하여 이진 탐색을 구현할 수 있습니다. 함수로 구현하면 재사용성과 모듈화가 용이해집니다.
 이진 탐색 함수의 매개변수로는 탐색할 데이터 집합, 찾고자 하는 값, 탐색 범위의 시작 인덱스와 끝 인덱스가 필요합니다.
 탐색 범위를 반으로 나누어 중간 값(middle)을 구합니다.
 중간 값과 찾고자 하는 값을 비교하여 탐색 범위를 좁혀나갑니다.
 원하는 값을 찾으면 해당 인덱스를 반환하고, 찾지 못하면 nil을 반환합니다.
 
 -이진 탐색 호출 및 결과 확인
 이진 탐색 함수를 호출하여 복잡한 데이터에서 원하는 값을 찾아봅니다.
 반환된 인덱스를 통해 데이터의 위치를 확인하거나, 탐색에 실패한 경우에 대한 예외 처리를 수행합니다.
*/

import Foundation

var binaryArray = [0, 1, 4, 6, 8, 11, 14, 23, 24, 26, 28, 31, 41, 50]

func binarySearch(array: [Int], target: Int, start: Int, end: Int) -> Int? {
    // 시작점이 끝점보다 커지면 다 탐색되었으므로 리턴
    guard start <= end else { return nil }
    
    // 배열 중간 값으로 초기화
    var mid = (start + end) / 2
    
    if array[mid] == target {
        return mid
    } else if array[mid] > target {
        // 배열 중간값이 타겟보다 클 경우 배열 중간값보다 아래인 영역을 start(array first), end(mid-1)로 탐색
        return binarySearch(array: array, target: target, start: start, end: mid-1)
    } else {
        // 배열 중간값이 타겟보다 작을 경우 배열 중간값보다 위인 영역을 start(mid+1), end(array count)로 탐색
        return binarySearch(array: array, target: target, start: mid+1, end: end)
    }
}

print(" target은 \(binarySearch(array: binaryArray, target: 14, start: 0, end: binaryArray.count-1))번째 인덱스에 위치")
