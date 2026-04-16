---
tags:
  - data-visualization
  - function
  - r-programming-language
---
# The `arrange()` Function in R (`dplyr`)

!!! tip "Purpose"
    The `arrange()` function is used to **reorder rows** in a data frame based on the values of one or more columns. It is the equivalent of "sorting" in Excel.

## Usage
The basic syntax is:
`arrange(data, column1, column2, ...)`

### Basic Sorting
By default, `arrange()` sorts in **ascending** order (smallest to largest / A to Z).

## What do I need to install?

To use `arrange()`, you need to install the `dplyr` package. Since `dplyr` is the core of data manipulation in R, many people install the entire `tidyverse` suite.

To use it in your script, you must load it:

```R
library(dplyr)
# or
library(tidyverse)
```

## How to use `arrange()`

The basic syntax is:
`arrange(data, column1, column2, ...)`

### 1. Simple Sorting (Ascending)
By default, `arrange()` sorts in ascending order (lowest to highest, or A-Z).

```R
# Sort students by grade
students_sorted <- arrange(students, grade)
```

### 2. Descending Order
Use the `desc()` helper function to sort from highest to lowest.

```R
# Sort students by grade (highest first)
students_desc <- arrange(students, desc(grade))
```

### 3. Multiple Columns
You can sort by multiple columns. If there is a tie in the first column, it uses the second column.

```R
# Sort by major (A-Z), then by grade (highest first)
students_complex <- arrange(students, major, desc(grade))
```

### 4. Using with the Pipe Operation (`%>%`)
In modern R, `arrange()` is often used with the pipe operator to chain operations together.

```R
# Filter students in IT major, then sort by grade (descending)
it_top_grades <- students %>%
  filter(major == "IT") %>%
  arrange(desc(grade))
```

### 5. Characteristics
- **Missing values (`NA`)** are always placed at the end, regardless of whether you use `desc()` or not.
- It returns a **new data frame**; it does not modify the original one unless you assign it back.

## Related Functions
- [rename](rename.md): Used to change column names.
- [mutate](mutate.md): Used to create or transform columns.
- [group_by](group_by.md): Used to group data for operations.
