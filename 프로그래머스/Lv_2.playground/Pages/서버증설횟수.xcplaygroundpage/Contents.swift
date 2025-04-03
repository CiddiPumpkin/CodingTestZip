/*
 https://school.programmers.co.kr/learn/courses/30/lessons/389479
 문제 설명
 당신은 온라인 게임을 운영하고 있습니다. 같은 시간대에 게임을 이용하는 사람이 m명 늘어날 때마다 서버 1대가 추가로 필요합니다. 어느 시간대의 이용자가 m명 미만이라면, 서버 증설이 필요하지 않습니다. 어느 시간대의 이용자가 n x m명 이상 (n + 1) x m명 미만이라면 최소 n대의 증설된 서버가 운영 중이어야 합니다. 한 번 증설한 서버는 k시간 동안 운영하고 그 이후에는 반납합니다. 예를 들어, k = 5 일 때 10시에 증설한 서버는 10 ~ 15시에만 운영됩니다.

 하루 동안 모든 게임 이용자가 게임을 하기 위해 서버를 최소 몇 번 증설해야 하는지 알고 싶습니다. 같은 시간대에 서버를 x대 증설했다면 해당 시간대의 증설 횟수는 x회입니다.

 다음은 m = 3, k = 5 일 때의 시간대별 증설된 서버의 수와 증설 횟수 예시입니다.

 시각    게임 이용자의 수    증설된 서버의 수    증설 횟수
 0 ~ 1    0    0    0
 1 ~ 2    2    0    0
 2 ~ 3    3    1    1
 3 ~ 4    3    1    0
 4 ~ 5    1    1    0
 5 ~ 6    2    1    0
 6 ~ 7    0    1    0
 7 ~ 8    0    0    0
 8 ~ 9    0    0    0
 9 ~ 10    0    0    0
 10 ~ 11    4    1    1
 11 ~ 12    2    1    0
 12 ~ 13    0    1    0
 13 ~ 14    6    2    1
 14 ~ 15    0    2    0
 15 ~ 16    4    1    0
 16 ~ 17    2    1    0
 17 ~ 18    13    4    3
 18 ~ 19    3    3    0
 19 ~ 20    5    3    0
 20 ~ 21    10    3    0
 21 ~ 22    0    3    0
 22 ~ 23    1    0    0
 23 ~ 24    5    1    1
 모든 게임 이용자를 감당하기 위해 최소 7번 서버를 증설해야 하며, 이보다 적은 수의 서버 증설로는 모든 게임 이용자를 감당할 수 없습니다.

 0시에서 23시까지의 시간대별 게임 이용자의 수를 나타내는 1차원 정수 배열 players, 서버 한 대로 감당할 수 있는 최대 이용자의 수를 나타내는 정수 m, 서버 한 대가 운영 가능한 시간을 나타내는 정수 k가 주어집니다. 이때, 모든 게임 이용자를 감당하기 위한 최소 서버 증설 횟수를 return 하도록 solution을 완성해 주세요.

 제한사항
 players의 길이 = 24
 0 ≤ players의 원소 ≤ 1,000
 players[i]는 i시 ~ i+1시 사이의 게임 이용자의 수를 나타냅니다.
 1 ≤ m ≤ 1,000
 1 ≤ k ≤ 24
 테스트 케이스 구성 안내
 아래는 테스트 케이스 구성을 나타냅니다. 각 그룹 내의 테스트 케이스를 모두 통과하면 해당 그룹에 할당된 점수를 획득할 수 있습니다.

 그룹    총점    추가 제한 사항
 #1    5%    m = 1, k = 1
 #2    7%    k = 1
 #3    88%    추가 제한 사항 없음
 입출력 예
 players    m    k    result
 [0, 2, 3, 3, 1, 2, 0, 0, 0, 0, 4, 2, 0, 6, 0, 4, 2, 13, 3, 5, 10, 0, 1, 5]    3    5    7
 [0, 0, 0, 10, 0, 12, 0, 15, 0, 1, 0, 1, 0, 0, 0, 5, 0, 0, 11, 0, 8, 0, 0, 0]    5    1    11
 [0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 5, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1]    1    1    12
 입출력 예 설명
 입출력 예 #1

 문제의 예시와 같습니다.
 입출력 예 #2

 총 11번 서버를 증설해야 합니다.
 3 ~ 4시: 2번
 5 ~ 6시: 2번
 7 ~ 8시: 3번
 15 ~ 16시: 1번
 18 ~ 19시: 2번
 20 ~ 21시: 1번
 입출력 예 #3

 총 12번 서버를 증설해야 합니다.
 5 ~ 6시: 2번
 9 ~ 10시: 1번
 11 ~ 12시: 5번
 13 ~ 14시: 2번
 15 ~ 16시: 1번
 23 ~ 24시: 1번
 */

import Foundation

func solution(_ players:[Int], _ m:Int, _ k:Int) -> Int {
    /*
     m = 증설 기준 숫자
     k = 증설시 운행되는 시간
     
     s = 증설된 서버의 수, (n * m)이상, (n+1)*m 미만일시 n대의 증설서버 필요
     aSum = 증설된 서버의 횟수
     */
    var answer = 0
    return 0
}
solution([0, 2, 3, 3, 1, 2, 0, 0, 0, 0, 4, 2, 0, 6, 0, 4, 2, 13, 3, 5, 10, 0, 1, 5], 3, 5)
//solution([0, 0, 0, 10, 0, 12, 0, 15, 0, 1, 0, 1, 0, 0, 0, 5, 0, 0, 11, 0, 8, 0, 0, 0], 5, 1)
