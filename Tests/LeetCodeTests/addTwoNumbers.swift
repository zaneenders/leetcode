import LeetCode
import Testing

@Suite
struct AddTwoNumbers {
  @Test func exampleOne() {
    let sol = Solution()
    let inputOne = ListNode(array: [2, 4, 3])
    let inputTwo = ListNode(array: [5, 6, 4])
    print(inputOne.debugDescription)
    print(inputTwo.debugDescription)
    let result = sol.addTwoNumbers(inputOne, inputTwo)
    let expected = ListNode()
    #expect(result == expected)
  }
}
