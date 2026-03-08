Below is a clear explanation of the why and how behind each group of problems in the SQL 50 plan.
This helps anyone understand what they are learning — not just solving blindly.

1️⃣ SELECT — Learning How to Fetch the Right Data

These problems teach the foundation of SQL: filtering, selecting, and returning clean rows.

Recyclable and Low Fat Products

Why: Learn WHERE filters with multiple conditions.
How: Select rows that satisfy both flags (low_fats = 'Y' AND recyclable = 'Y').

Find Customer Referee

Why: Learn filtering with NULLs and specific conditions.
How: Return customers not referred by a specific ID (or with NULL referee).

Big Countries

Why: Practice OR conditions & numeric filtering.
How: Select big Population or large Area countries.

Article Views I

Why: Understand equality of two columns.
How: Author viewed their own article → author_id = viewer_id.

Invalid Tweets

Why: Work with string lengths.
How: Filter tweets with length > allowed limit.

2️⃣ BASIC JOINS — Connecting Two Tables Correctly

These teach inner and left joins — the heart of relational databases.

Replace Employee ID With The Unique Identifier

Why: Understand JOIN on matching keys.
How: Join employee to unique-id table.

Product Sales Analysis I

Why: Learn join + math on columns.
How: Combine product and sales records.

Customers Who Never Order

Why: Learn LEFT JOIN to find “missing” data.
How: Select customers with no matching orders.

Sales Person

Why: Filter joined tables.
How: Find salespersons not linked to a specific region.

Combine Two Tables

Why: Merge data across tables.
How: LEFT JOIN to return all people with or without addresses.

3️⃣ AGGREGATION — Summaries, Counts, Grouping

You learn how to summarize data using:
COUNT, SUM, AVG, GROUP BY, HAVING

Not Boring Movies

Why: Filtering + sorting.
How: Skip boring or even-numbered movies.

Average Selling Price

Why: Weighted averages.
How: SUM(price * units) / SUM(units).

Project Employees I

Why: Count employees per project.
How: GROUP BY project_id.

Manager With At Least 5 Direct Reports

Why: GROUP BY + HAVING.
How: Count employees per manager.

Classes More Than 5 Students

Why: Learn HAVING to filter grouped data.
How: Count and return classes with >5.

4️⃣ SORTING & GROUPING — Ordering + Conditional Grouping

These problems help you understand:

✔ ORDER BY
✔ Distinct group results
✔ “Sold by date”, “group by customer” patterns

Biggest Single Number

Why: Find highest distinct value.
How: Use MAX() or ORDER BY.

Customers Who Bought All Products

Why: Division in SQL (important concept).
How: Count distinct products per customer.

Group Sold Products by Date

Why: Group by date + aggregation.
How: Count sold items per day.

Activity Participants

Why: Distinct counts + grouping.
How: Count users per activity type.

Employees Whose Manager Left

Why: NULL filtering in joins.
How: Find employees whose manager is missing.

5️⃣ ADVANCED JOINS — Multiple Tables, Rules, Conditions

These problems combine filtering + joining + logic.

Article Views II

Why: Distinct counts of unique readers.
How: COUNT(DISTINCT viewer_id).

Confirmation Rate

Why: Ratio calculations.
How: Confirmations / Requests per user.

Monthly Transactions I

Why: Extract month from date.
How: DATE_FORMAT + group by month.

Restaurant Growth

Why: Running window-like logic without windows.
How: Join table to itself by date constraints.

Students and Examinations

Why: FULL dataset even when missing rows.
How: CROSS JOIN + LEFT JOIN + COALESCE.

6️⃣ SUBQUERIES — Thinking in Layers

Teaches how to solve queries using another query inside it.

Exchange Seats

Why: Row swapping logic.
How: Conditional row manipulation.

Employees With Missing Information

Why: NULL checks + EXCEPT logic.
How: Find rows missing required fields.

Consecutive Numbers

Why: Pattern matching inside a table.
How: Self-join rows by ID offsets.

Game Play Analysis I

Why: Filter first login date.
How: Use MIN() or LIMIT.

Game Play Analysis II

Why: Group and filter earliest event per user.
How: Aggregation + join back.

7️⃣ WINDOW FUNCTIONS — Ranking, Running, Row Numbers

Powerful analytical SQL tools.

Game Play Analysis III

Why: Rolling day-activity window.
How: DATEDIFF + grouping.

Department Top Three Salaries

Why: Rank inside a group.
How: DENSE_RANK() OVER (PARTITION BY dept).

Rank Scores

Why: Ranking all values.
How: DENSE_RANK() OVER (ORDER BY score DESC).

Nth Highest Salary

Why: Use LIMIT or subqueries.
How: ORDER BY salary DESC LIMIT 1 OFFSET N-1.

Trips and Users

Why: CASE + joins + grouping.
How: Count cancelled vs completed trips.

8️⃣ ADVANCED SELECT — Complex Filtering & Logic

These problems combine everything you’ve learned.

Running Total

Why: Cumulative sums.
How: Window SUM() over ordered rows.

Highest Grade

Why: Order + grouping + limit per group.
How: Window + filtering.

Median Employee Salary

Why: Middle value in ordered set.
How: Window functions + row_number.

Reorder Data in Log Files

Why: Sort string patterns.
How: CASE + custom ordering.

Market Analysis I & II

Why: Grouping + joining + date logic.

Active Users

Why: Date window filtering.
How: Count events per user within 30 days.

Human Traffic of Stadium

Why: Consecutive row pattern detection.
How: Row_number technique.

Loan Application

Why: Conditional acceptance rules.
How: CASE + join.

Daily Leads and Partners

Why: Date grouping in business context.
How: COUNT + JOIN.

Duplicate Emails

Why: Find repeated string filters.
How: GROUP BY + HAVING COUNT > 1.

Tidy Numbers

Why: Numeric comparison.
How: Find min/max digit.

Rising Temperature

Why: Compare row with previous day.
How: Self join or LAG().

Employee System

Why: status tracking.
How: date ranges + join.

Product Price at a Given Date

Why: Historical data lookup.
How: Find most recent price <= date.

⭐ Summary of How You Solve SQL Problems

Across the SQL 50 plan, the thought process becomes consistent:

Read the requirement clearly

Identify: filter, join, group, window, or subquery

Write the base SELECT

Add correct conditions (WHERE, HAVING, ON)

Decide if duplicates matter → DISTINCT

Decide if grouping needed → GROUP BY

Sort only at the end

Return simplified clean columns

This reduces 95% confusion.

<!---LeetCode Topics Start-->
# LeetCode Topics
## Database
| Problem Name | Difficulty |
| ------- | ------- |
| [0176-second-highest-salary](https://github.com/alsopranab/leetcode-solutions/tree/main/0176-second-highest-salary/) | Medium |
<!---LeetCode Topics End-->