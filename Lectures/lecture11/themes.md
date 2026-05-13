# ggplot2 Themes Reference

This document lists the complete set of built-in themes available in the `ggplot2` package for R.

## 1. theme_gray()
The signature ggplot2 theme with a light grey background and white gridlines. It is designed to put the data forward while providing a clear reference for the grid.

## 2. theme_bw()
The classic dark-on-light ggplot2 theme. May work better for presentations displayed with a projector.

## 3. theme_linedraw()
A theme with only black lines of various widths on white backgrounds, reminiscent of a standard photocopied chart.

## 4. theme_light()
A theme similar to `theme_linedraw()` but with light grey lines and axes, to direct more attention towards the data.

## 5. theme_dark()
The dark cousin of `theme_light()`, with similar line sizes but a dark background. Useful to make thin coloured lines pop out.

## 6. theme_minimal()
A minimalistic theme with no background annotations.

## 7. theme_classic()
A classic-looking theme, with x and y axis lines and no gridlines.

## 8. theme_void()
A completely empty theme.

## 9. theme_test()
A theme for visual unit tests. It should stay relatively constant over time.

---

### Usage Example
To apply a theme to your plot, simply add it using the `+` operator:

```r
library(ggplot2)
ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  theme_minimal()
```
