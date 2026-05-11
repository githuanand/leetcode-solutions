-- LeetCode 177. Nth Highest Salary
-- Difficulty: Medium
-- Topic: Database / SQL
-- Approach: DISTINCT + ORDER BY + LIMIT OFFSET
-- Time Complexity: O(n log n)
-- Space Complexity: O(1)

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N = N - 1;

  RETURN (
      SELECT (
          SELECT DISTINCT salary
          FROM Employee
          ORDER BY salary DESC
          LIMIT 1 OFFSET N
      )
  );
END
