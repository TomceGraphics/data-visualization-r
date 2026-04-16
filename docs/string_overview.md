---
tags:
  - string-manipulation
  - base-r
  - lecture-8
---
# String Manipulation Overview

String manipulation involves searching, editing, and cleaning text data. In R, while there are many packages for this (like `stringr`), base R provides powerful built-in functions that are essential for every data scientist to know.

!!! warning "Messy Data"
    Text data is often the messiest part of any dataset—containing unwanted spaces, inconsistent capitalization, or special characters. These tools help you fix those issues.

## Primary Guides
We have broken down string manipulation into three focused categories:

*   [**Searching**](string_searching.md): Find patterns using `grep` and `grepl`.
*   [**Replacing**](string_replacing.md): Edit text using `sub` and `gsub`.
*   [**Cleaning & Measuring**](string_cleaning.md): Trim spaces and extract text with `trimws` and `substr`.

## Common Workflows
1. **Cleaning**: Removing leading/trailing whitespace with `trimws()`.
2. **Subsetting**: Extracting specific parts of a string with `substr()`.
3. **Pattern Matching**: Finding rows that contain a specific word with `grepl()`.
4. **Replacement**: Fixing typos or changing formats across thousands of rows with `gsub()`.

---
*Tip: When working with column names that have spaces or dots, string manipulation is often your first step in cleaning the data.*
