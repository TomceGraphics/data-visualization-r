---
tags:
  - data-visualization
  - function
  - r-programming-language
---
# The `group_by()` Function in R (`dplyr`)

!!! question "What does it do?"
    The `group_by()` function takes an existing data frame and converts it into a grouped data frame where operations are performed **"by group."** It doesn't change the data itself, but it changes how other functions (like `summarize`) interact with it.

## Usage
`group_by(data, column_to_group_by)`

!!! success "Power of Grouping"
    Grouping is most powerful when followed by `summarize()` to calculate statistics (mean, sum, count) for each group.

### Example: Grouping by Major
```R
library(dplyr)

# Group students by their major
students_grouped <- group_by(students, major)

# When you print this, it will show "Groups: major" at the top
print(students_grouped)
```

## Why use `group_by`?
`group_by()` is almost always followed by `summarise()` or `mutate()` to perform calculations within each category.

### Chaining with Summarise
```R
# Calculate average grade per major
students_avg_by_major <- students %>%
  group_by(major) %>%
  summarise(avg_grade = mean(grade))
```

## Related Functions
- [arrange](arrange.md): Used to reorder rows (can be used within groups).
- [mutate](mutate.md): Used to create or transform columns.
- [rename](rename.md): Used to change column names.
- [string_manipulation](string_manipulation.md): Search and replace text.
