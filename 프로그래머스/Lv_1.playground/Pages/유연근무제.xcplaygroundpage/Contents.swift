/*
 https://school.programmers.co.kr/learn/courses/30/lessons/388351
 문제 설명
 프로그래머스 사이트를 운영하는 그렙에서는 재택근무와 함께 출근 희망 시각을 자유롭게 정하는 유연근무제를 시행하고 있습니다. 제도 정착을 위해 오늘부터 일주일 동안 각자 설정한 출근 희망 시각에 늦지 않고 출근한 직원들에게 상품을 주는 이벤트를 진행하려고 합니다.

 직원들은 일주일동안 자신이 설정한 출근 희망 시각 + 10분까지 어플로 출근해야 합니다. 예를 들어 출근 희망 시각이 9시 58분인 직원은 10시 8분까지 출근해야 합니다. 단, 토요일, 일요일의 출근 시각은 이벤트에 영향을 끼치지 않습니다. 직원들은 매일 한 번씩만 어플로 출근하고, 모든 시각은 시에 100을 곱하고 분을 더한 정수로 표현됩니다. 예를 들어 10시 13분은 1013이 되고 9시 58분은 958이 됩니다.

 당신은 직원들이 설정한 출근 희망 시각과 실제로 출근한 기록을 바탕으로 상품을 받을 직원이 몇 명인지 알고 싶습니다.

 직원 n명이 설정한 출근 희망 시각을 담은 1차원 정수 배열 schedules, 직원들이 일주일 동안 출근한 시각을 담은 2차원 정수 배열 timelogs, 이벤트를 시작한 요일을 의미하는 정수 startday가 매개변수로 주어집니다. 이때 상품을 받을 직원의 수를 return 하도록 solution 함수를 완성해주세요.

 제한사항
 1 ≤ schedules의 길이 = n ≤ 1,000
 schedules[i]는 i + 1번째 직원이 설정한 출근 희망 시각을 의미합니다.
 700 ≤ schedules[i] ≤ 1100
 1 ≤ timelogs의 길이 = n ≤ 1,000
 timelogs[i]의 길이 = 7
 timelogs[i][j]는 i + 1번째 직원이 이벤트 j + 1일차에 출근한 시각을 의미합니다.
 600 ≤ timelogs[i][j] ≤ 2359
 1 ≤ startday ≤ 7
 1은 월요일, 2는 화요일, 3은 수요일, 4는 목요일, 5는 금요일, 6은 토요일, 7은 일요일에 이벤트를 시작했음을 의미합니다.
 출근 희망 시각과 실제로 출근한 시각을 100으로 나눈 나머지는 59 이하입니다.
 테스트 케이스 구성 안내
 아래는 테스트 케이스 구성을 나타냅니다. 각 그룹 내의 테스트 케이스를 모두 통과하면 해당 그룹에 할당된 점수를 획득할 수 있습니다.

 그룹    총점    추가 제한 사항
 #1    10%    n = 1. 이벤트 시작일이 월요일이고, 출근 희망 시각이 정각으로 된 입력만 주어집니다.
 #2    10%    이벤트 시작일이 월요일이고, 출근 희망 시각이 정각으로 된 입력만 주어집니다.
 #3    15%    출근 희망 시각이 정각으로 된 입력만 주어집니다.
 #4    15%    이벤트 시작일이 월요일인 입력만 주어집니다.
 #5    50%    제한사항 외 추가조건이 없습니다.
 입출력 예
 schedules    timelogs    startday    result
 [700, 800, 1100]    [[710, 2359, 1050, 700, 650, 631, 659], [800, 801, 805, 800, 759, 810, 809], [1105, 1001, 1002, 600, 1059, 1001, 1100]]    5    3
 [730, 855, 700, 720]    [[710, 700, 650, 735, 700, 931, 912], [908, 901, 805, 815, 800, 831, 835], [705, 701, 702, 705, 710, 710, 711], [707, 731, 859, 913, 934, 931, 905]]    1    2
 입출력 예 설명
 입출력 예 #1

 이벤트를 시작한 날은 금요일입니다. 직원 3명의 일주일 간 출근 시각을 나타내면 다음과 같습니다.

 출근 희망 시각    출근 인정 시각
 7:00    7:10
 8:00    8:10
 11:00    11:10
 금    토    일    월    화    수    목
 7:10    23:59    10:50    7:00    6:50    6:31    6:59
 8:00    8:01    8:05    8:00    7:59    8:10    8:09
 11:05    10:01    10:02    6:00    10:59    10:01    11:00
 모든 직원이 평일에 늦지 않고 출근했습니다. 따라서 상품을 받을 직원은 3명입니다.

 입출력 예 #2

 이벤트를 시작한 날은 월요일입니다. 직원 4명의 일주일 간 출근 시각을 나타내면 다음과 같습니다. 취소선으로 표시된 시각이 출근이 필요한 평일에 지각한 날입니다.

 출근 희망 시각    출근 인정 시각
 7:30    7:40
 8:55    9:05
 7:00    7:10
 7:20    7:30
 월    화    수    목    금    토    일
 7:10    7:00    6:50    7:35    7:00    9:31    9:12
 9:08    9:01    8:05    8:15    8:00    8:31    8:35
 7:05    7:01    7:02    7:05    7:10    7:10    7:11
 7:07    7:31    8:59    9:13    9:34    9:31    9:05
 첫 번째, 세 번째 직원이 평일에 늦지 않고 출근했습니다. 따라서 상품을 받을 직원은 2명입니다.
 */

import Foundation

// 나의 초기 풀이
func solution1(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    let employeeLogs: (schedules: [Int], timeLogs: [[Int]]) = (schedules, timelogs)
    var weekday = startday
    var goodsCount = 0
    
    for i in 0..<employeeLogs.schedules.count {
        var needCount = 0
        let schedule = employeeLogs.schedules[i]
        let hourRatio: Float = Float(((schedule + 10) % 100) / 60)
        let limitSchedule = hourRatio < 1.0 ? schedule + 10 : schedule + 50
        
        for time in employeeLogs.timeLogs[i] {
            if time <= limitSchedule && weekday != 6 && weekday != 7 {
                needCount += 1
            }
            
            if weekday <= 6 {
                weekday += 1
            } else {
                weekday = 1
            }
        }
        
        if needCount == 5 {
            goodsCount += 1
        }
    }
    
    return goodsCount
}
// 다른 답안 풀이
func solution2(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    return schedules.indices.reduce(0){ answer, index in
        let minute = schedules[index] % 100 + 10
        let schedule = minute > 59 ? schedules[index] + 50 : schedules[index] + 10
        return answer + (timelogs[index].indices.filter{(($0 + startday - 1) % 7 + 1 < 6) && timelogs[index][$0] > schedule }.count == 0 ? 1 : 0)
    }
}
// 나의 응용 풀이
func solution3(_ schedules: [Int], _ timelogs: [[Int]], _ startday: Int) -> Int {
    return schedules.indices.reduce(0) { value, index in
        let hourRatio = Float(((schedules[index] + 10) % 100) / 60)
        let limitSchedule = hourRatio < 1.0 ? schedules[index] + 10 : schedules[index] + 50
        return value + (timelogs[index].indices.filter{(($0 + startday - 1) % 7 + 1 < 6) && timelogs[index][$0] <= limitSchedule}.count == 5 ? 1 : 0)
    }
}
//print(solution1([700, 855, 1100], [[710, 2359, 1050, 700, 650, 631, 659], [800, 801, 805, 800, 759, 810, 809], [1105, 1001, 1002, 600, 1059, 1001, 1100]], 5))
