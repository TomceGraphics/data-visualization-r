---
tags:
  - transformation
  - dplyr
  - lecture-8
---
# Renaming Columns
*`rename()`*

!!! info "Purpose"
    The `rename()` function is a specialized tool for **changing column names**. It is safer and more intuitive than base R methods because it follows a simple `new_name = old_name` pattern.

## Usage

The syntax is:
`rename(data, new_name = old_name)`

### Example

```R
library(dplyr)

# Rename 'age' to 'student_age' and 'grade' to 'student_grade'
students_renamed <- rename(students, 
                           student_age = age, 
                           student_grade = grade)
```

## Key Rules
1. **New Name First**: You always put the `new_name` on the left and the `old_name` on the right.
2. **Selectivity**: Only the columns you specify are renamed; all other columns remain the same.

## Related Functions
- [arrange](arrange.md): Used to reorder rows.
- [mutate](mutate.md): Used to create or transform columns.
- [group_by](group_by.md): Used to group data for operations.
- [string_manipulation](string_manipulation.md): Search and replace text.
