---
tags:
  - string-manipulation
  - text-processing
  - base-r
---
# String Manipulation Overview

String manipulation involves searching, editing, and cleaning text data. In R, while there are many packages for this (like `stringr`), base R provides powerful built-in functions that are essential for every data scientist to know.

!!! warning "Messy Data"
    Text data is often the messiest part of any dataset—containing unwanted spaces, inconsistent capitalization, or special characters. These tools help you fix those issues.

## Primary Guides
Currently, we have a comprehensive guide covering the most important base R text functions:

*   [**Core Text Functions**](string_manipulation.md): Learn about `grep`, `sub`, `gsub`, `trimws`, and more.

## Common Workflows
1. **Cleaning**: Removing leading/trailing whitespace with `trimws()`.
2. **Subsetting**: Extracting specific parts of a string with `substr()`.
3. **Pattern Matching**: Finding rows that contain a specific word with `grepl()`.
4. **Replacement**: Fixing typos or changing formats across thousands of rows with `gsub()`.

---
*Tip: When working with column names that have spaces or dots, string manipulation is often your first step in cleaning the data.*
