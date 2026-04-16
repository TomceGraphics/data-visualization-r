---
tags:
  - data-visualization
  - function
  - r-programming-language
---
# The `mutate()` Function in R (`dplyr`)

!!! abstract "Core Concept"
    The `mutate()` function is your primary tool for **creating new columns** based on existing ones or transforming existing columns. It keeps your original data intact while adding the results of your calculations.

## Usage
`mutate(data, new_column = calculation_or_transformation)`

### Example: Creating a Category
You can use `mutate()` with `ifelse()` to create categories based on values.

```R
library(dplyr)

# Create a letter grade column based on numerical grades
students_mutated <- mutate(students, 
    grade_category = ifelse(grade >= 90, "A", 
                     ifelse(grade >= 80, "B", 
                     ifelse(grade >= 70, "C", "F")))
)
```

### Example: Mathematical Transformation
```R
# Calculate age in months
students_age_months <- mutate(students, age_months = age * 12)
```

## Related Functions
- [arrange](arrange.md): Used to reorder rows.
- [rename](rename.md): Used to change column names.
- [group_by](group_by.md): Used to group data for operations.
- [string_manipulation](string_manipulation.md): Search and replace text.
