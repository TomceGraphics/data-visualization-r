---
tags:
  - visual-customization
  - ggplot2
  - lecture-11
---
# ggplot2 Built-in Themes

!!! tip "Quick Style"
    Themes are the easiest way to change the entire "look and feel" of your plot with a single line of code. They handle background colors, gridlines, and default font sizes.

## Overview
To apply a theme, simply add it to your ggplot object using the `+` operator.

### Standard Themes
| Theme | Best For... |
| :--- | :--- |
| `theme_gray()` | Default. Good for data exploration. |
| `theme_bw()` | Printing and presentations (classic black & white). |
| `theme_minimal()` | Modern, clean look with no background. |
| `theme_classic()` | Traditional research paper style (no gridlines). |
| `theme_dark()` | High-contrast plots with bright colors. |
| `theme_void()` | Maps or diagrams where no axes are needed. |

## Usage
```r
library(ggplot2)

# Using the MAACS dataset from Lecture 11
ggplot(maacs, aes(x = logpm25, y = NocturnalSympt)) +
  geom_point() +
  theme_bw() # Applies the Black and White theme
```

## Comparison Example
```r
# Minimalist approach
ggplot(maacs, aes(x = logpm25, y = NocturnalSympt)) +
  geom_point() +
  theme_minimal()

# Completely empty (for custom annotations or maps)
ggplot(maacs, aes(x = logpm25, y = NocturnalSympt)) +
  geom_point() +
  theme_void()
```

## Related Functions
- [Theme Adjustments](theme_adjustments.md): Fine-grained control over text and colors.
- [ggsave](ggsave.md): Saving your customized plots.
