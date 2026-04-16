---
tags:
  - string-manipulation
  - base-r
  - lecture-8
---
# Searching Strings
*`grep()` and `grepl()`*

!!! tip "Recall"
    Use these functions when you need to find rows or elements that match a specific text pattern.

## 1. `grepl()` (Logical Search)
Returns a **logical vector** (`TRUE` or `FALSE`). This is most commonly used for filtering data frames.

```R
# Find all intersections that contain "Alameda"
has_alameda <- grepl("Alameda", cameras$intersection)
```

## 2. `grep()` (Index Search)
Returns the **indices** (positions) or the **values** of the matches.

```R
# Get positions of matches
grep("Alameda", cameras$intersection)

# Get the actual names of the matches
grep("Alameda", cameras$intersection, value = TRUE)
```

!!! info "Pro-Tip: Case Sensitivity"
    By default, these are case-sensitive. Use `ignore.case = TRUE` to find both "Alameda" and "alameda".
