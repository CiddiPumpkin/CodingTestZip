/*
 [퀵정렬 (Quick Sort)]
 기준 데이터를 설정하고 그 기준보다 큰 데이터와 작은 데이터의 위치를 바꾸는 정렬 방법

 (오름차순 기준)
 (1) 리스트에서 첫 번째 데이터를 피벗(기준)으로 정한다.
 (2) 리스트 왼쪽에서부터 피벗보다 큰 데이터를 찾고 오른쪽에서부터 피벗보다 작은 데이터를 찾는다. 그다음 그 두 데이터의 위치를 서로 교환해 준다. 계속 반복하다가, 왼쪽에서부터 찾은 데이터와 오른쪽에서부터 찾은 데이터의 위치가 서로 엇갈릴 수 있다.

 ex.
 5 4 2 0 3 1 6 9 7 8
 5가 피벗인데, 왼쪽에서부터 찾은 큰 데이터가 6일 것이고, 오른쪽에서부터 찾은 데이터가 1이다. 이것이 데이터의 위치가 엇갈리는 상황이다.

 엇갈리게 되었을 때, 작은 데이터의 위치(예시에서 1)와 피벗(5)의 위치를 바꿔준다. 그렇게 되면 예시로 든 리스트는 다음과 같이 분할된다.

 1 4 2 0 3 5 6 9 7 8

 피벗인 5를 기준으로 좌측은 5보다 작은 수, 우측은 5보다 큰 수로 배열이 된 것을 알 수 있다. 이것을 '분할'이라고 한다.

 (4) 분할된 두 개의 작은 리스트에 대해 재귀(Recursion)적으로 이 과정을 반복한다. 좌측 리스트와 우측 리스트로 나누어 재귀적으로 과정을 반복하는 것이다.

 [1 4 2 0 3] [6 9 7 8] 두 개의 리스트로 나뉘어 분할을 반복한다. 재귀는 리스트의 크기가 0이나 1이 될 때까지 반복한다
 
 시간복잡도의 경우, 평균적으로 O(NlogN)이다. 피벗값의 위치가 변경되어 분할이 일어날 때마다 왼쪽과 오른쪽 리스트를 '절반'씩 나눈다고 생각해보면 이해를 할 수 있다. 8개의 데이터가 있을 때, 데이터는 4, 4개로 나누어질 것이고, 그다음은 2 2 2 2개, 그다음은 1 * 8 개로 나누어질 것이다. 분할이 이루어지는 횟수가 기하급수적으로 감소하게 됨을 알 수 있다.
 최악의 경우에는 O(N2) 시간이 걸린다. 리스트의 가장 왼쪽 데이터를 피벗으로 삼을 때, 이미 데이터가 정렬되어 있는 경우에는 매우 느리게 동작할 수 밖에 없다. 데이터가 무작위로 입력되는 경우, 퀵 정렬은 빠르게 동작할 확률이 '높다'.
 그래서 C++은 최악의 경우에도 시간복잡도가 O(NlogN)이 될 수 있도록 피벗값을 설정할 때 추가적인 로직을 더해주기도 한다.
 공간복잡도의 경우, 주어진 배열 안에서 Swap을 통해 정렬이 수행되기에 O(N)이다.
 */

import Foundation

func quickSort(_ array: [Int]) -> [Int] {
    guard let first = array.first, array.count > 1 else { return array }
    
    let pivot = first
    let left = array.filter({$0 < pivot})
    let right = array.filter({$0 > pivot})
    
    print("pivot - \(pivot), left - \(left), right - \(right)")
    
    return quickSort(left) + [pivot] + quickSort(right)
}
//quickSort([1, 4, 2, 3, 5, 6, 9, 7, 8])
