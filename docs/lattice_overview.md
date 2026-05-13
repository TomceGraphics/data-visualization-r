---
tags:
  - multi-panel-layout
  - lattice
  - lecture-12
---
# Conditional Graphics with Lattice
*`lattice` package*

!!! tip "The Lattice Philosophy"
    Lattice is designed for "Trellis" graphics—creating many small plots (panels) conditioned on one or more variables. It uses a **formula-based interface** (`y ~ x | g`) that is very powerful for scientific data.

## What are Trellis Graphics?
Trellis graphics is a framework for data visualization designed to display multivariate data by partitioning it into multiple panels.

### Key Concepts
*   **Conditioning**: Partitioning a relationship (e.g., `Weight ~ Height`) into separate panels based on the values of another variable (e.g., `| Gender`).
*   **Small Multiples**: Instead of overcrowding a single plot, data is broken into a grid of clear, separate panels.
*   **The "Strip"**: The label bar at the top of each panel that identifies the data subset.
*   **Visual Consistency**: Every panel uses the same axes and scales by default, allowing for immediate visual comparison across groups.

---

## Formula Interface
The core of every Lattice plot is the formula:
`response ~ predictor | conditional_variable`

| Component | Meaning |
| :--- | :--- |
| `y ~ x` | Standard scatter plot. |
| `y ~ x \| g` | One panel for every level of variable `g`. |
| `groups = z` | Overlay different levels of `z` in the same panel. |

## Core Functions
| Function | Purpose |
| :--- | :--- |
| `xyplot()` | Scatter plots and line plots. |
| `bwplot()` | Box-and-whisker plots (and violin plots). |
| `stripplot()` | 1D scatter plots. |
| `dotplot()` | Cleveland dot plots. |

## Example: Conditioned Scatter Plot
Using the `airquality` dataset:

```r
library(lattice)

# One panel per month
xyplot(Ozone ~ Wind | Month, 
       data = airquality,
       layout = c(5, 1), # 5 columns, 1 row
       main = "Ozone vs Wind by Month")
```

## Example: Boxplots
```r
# Boxplot of length by dose
bwplot(len ~ dose, data = ToothGrowth)

# Conditioned by supplement type
bwplot(len ~ dose | supp, data = ToothGrowth)
```

## Related Functions
- [Lattice Panel Customization](lattice_panels.md): How to add lines, medians, and custom logic to panels.
- [Scales and Layouts](lattice_overview.md): Controlling the grid and axis limits.
