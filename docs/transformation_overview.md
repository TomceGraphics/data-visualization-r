---
tags:
  - transformation
  - dplyr
  - tidyverse
  - lecture-8
---
# Data Transformation Overview

Data transformation is the process of cleaning, reshaping, and preparing data for analysis. In R, this is primarily handled by the **`dplyr`** package, which provides a consistent "grammar" for data manipulation.

## Installation & Setup
To use these transformation functions, you need to install the **`dplyr`** package. Since `dplyr` is the core of data manipulation in R, many people install the entire **`tidyverse`** suite.

To use them in your script, you must load the library:

```R
library(dplyr)
# OR
library(tidyverse)
```

!!! tip "Note"
    The base R functions mentioned in other sections do not require any installation. Only the `dplyr` functions listed below require this setup.

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
