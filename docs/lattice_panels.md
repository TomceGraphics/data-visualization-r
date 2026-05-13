---
tags:
  - multi-panel-layout
  - lattice
  - lecture-12
---
# Lattice Panel Customization
*`panel` functions*

!!! abstract "Low-Level Control"
    In Lattice, you don't "add layers" like in ggplot2. Instead, you provide a `panel` function that describes exactly what to draw inside every single panel of the grid.

## The Panel Function
When you use the `panel = ` argument, you are defining a small script that runs for every panel.

### Essential Panel Helpers
- `panel.xyplot(x, y, ...)`: Draws the points.
- `panel.abline(h = ...)`: Draws horizontal/vertical lines.
- `panel.lmline(x, y)`: Draws a regression line.
- `panel.loess(x, y)`: Draws a smooth trend line.
- `panel.violin`: Used with `bwplot` to create violin shapes.

## Examples

### Adding a Median Line
```r
library(lattice)

xyplot(y ~ x | f, 
  panel = function(x, y, ...) {
    panel.xyplot(x, y, ...)       # Draw the points first
    panel.abline(h = median(y),   # Add a horizontal median line
      lty = 2, col = "red")
  }
)
```

### Regression per Panel
```r
xyplot(Ozone ~ Wind | Month, data = airquality,
  panel = function(x, y, ...) {
    panel.xyplot(x, y, ...)   # Points
    panel.lmline(x, y,        # Individual regression line per panel
      col = "blue", lwd = 2)
  }
)
```

### Creating Violin Plots
```r
# Change the default panel from boxplot to violin
bwplot(len ~ dose, data = ToothGrowth,
       panel = panel.violin)
```

## Related Functions
- [Lattice Overview](lattice_overview.md): Basics of formulas and functions.
