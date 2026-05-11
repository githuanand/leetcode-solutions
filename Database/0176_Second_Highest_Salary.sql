-- LeetCode 176. Second Highest Salary
-- Difficulty: Medium
-- Topic: Database / SQL
-- Approach: DISTINCT + ORDER BY + LIMIT OFFSET
-- Time Complexity: O(n log n)
-- Space Complexity: O(1)

SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;
