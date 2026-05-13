---
tags:
  - visual-customization
  - ggplot2
  - lecture-11
---
# Fine-Grained Theme Customization
*`theme()`*

!!! abstract "The Ultimate Controller"
    While built-in themes provide a baseline, the `theme()` function allows you to modify **every single non-data element** of your plot, from legend position to the thickness of axis ticks.

## Core Elements
The `theme()` function uses "element" functions to specify how to style different parts:
- `element_text()`: Labels, titles, and text.
- `element_line()`: Axis lines, gridlines.
- `element_rect()`: Background boxes, legend boxes.
- `element_blank()`: To remove an element entirely.

## Common Adjustments
| Parameter | Purpose |
| :--- | :--- |
| `legend.position` | Moves legend ("top", "bottom", "none", etc.). |
| `plot.title` | Styles the main title. |
| `strip.text` | Styles the text in facet labels. |
| `axis.text` | Styles the numbers/labels on axes. |

## Examples
Using the customization techniques from Lecture 11:

```r
library(ggplot2)

ggplot(maacs, aes(x = logpm25, y = NocturnalSympt)) +
  geom_point() +
  facet_wrap(~ bmicat) +
  theme_bw(base_size = 14) + # Set global base size
  theme(
    strip.text = element_text(face = "bold"),          # Bold facet headers
    plot.title = element_text(face = "bold", size = 16), # Larger, bold title
    legend.position = "top"                             # Move legend to top
  )
```

## Related Functions
- [Built-in Themes](visual_customization_overview.md): Standard themes to use as a starting point.
- [Labs](index.md): Adding labels and titles.
