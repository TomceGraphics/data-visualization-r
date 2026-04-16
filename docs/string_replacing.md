---
tags:
  - string-manipulation
  - base-r
  - lecture-8
---
# Replacing Strings
*`sub()` and `gsub()`*

!!! warning "The Difference"
    - `sub()` replaces only the **first** occurrence.
    - `gsub()` replaces **every** occurrence (Global sub).

## 1. `sub()` (Single Replacement)
Use this if you only need to change the first instance of a pattern in a string.

```R
# Replace the first dot with a dash in column names
names(cameras) <- sub("\\.", "-", names(cameras))
```

## 2. `gsub()` (Global Replacement)
Use this for bulk cleaning where a pattern might appear multiple times.

```R
# Replace ALL dots with dashes
names(cameras) <- gsub("\\.", "-", names(cameras))
```

!!! abstract "Escaping Characters"
    Characters like `.` or `+` have special meanings. Use a double backslash `\\.` to treat them as literal text.
