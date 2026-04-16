---
tags:
  - data-transformation
  - dplyr
  - tidyverse
---
# Data Transformation Overview

Data transformation is the process of cleaning, reshaping, and preparing data for analysis. In R, this is primarily handled by the **`dplyr`** package, which provides a consistent "grammar" for data manipulation.

!!! info "The Grammar of Data"
    Just like a sentence has verbs, `dplyr` uses "verbs" to describe actions you perform on your data frames.

## The Core Verbs
Below are the primary tools you will use to transform your data:

*   [**Arrange**](arrange.md): Reorder rows based on values.
*   [**Group By**](group_by.md): Group data into subsets for analysis.
*   [**Mutate**](mutate.md): Create or transform columns.
*   [**Rename**](rename.md): Change column names.

## Why Transform Data?
Rarely is raw data ready for visualization. You often need to:
1. Filter out irrelevant information.
2. Create new metrics (like calculating "Profit" from "Revenue" and "Cost").
3. Sort data to highlight top-performing categories.
4. Aggregate data to see big-picture trends.

---
*Reference: [R for Data Science - Data Transformation](https://r4ds.hadley.nz/data-transform)*
