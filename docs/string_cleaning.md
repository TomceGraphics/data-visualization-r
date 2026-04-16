---
tags:
  - string-manipulation
  - data-cleaning
---
# Cleaning Strings: `trimws()`, `nchar()`, and `substr()`

!!! success "Final Polish"
    These functions are the "finishing touches" for text data, helping you trim whitespace, measure length, and extract parts of words.

## 1. `trimws()` (Trimming)
Removes leading and trailing whitespace.

```R
text <- "   Data Visualization   "
trimws(text) # Result: "Data Visualization"
```

## 2. `nchar()` (Measuring)
Counts the number of characters in a string.

```R
nchar("Baltimore") # Result: 9
```

## 3. `substr()` (Extracting)
Extracts a specific part of a string based on position.

```R
# Extract the first 3 letters
substr("Baltimore", 1, 3) # Result: "Bal"
```
