---
tags:
  - visual-customization
  - ggplot2
  - lecture-11
---
# Saving Plots
*`ggsave()`*

!!! tip "Production Ready"
    The `ggsave()` function is the standard way to export your ggplot2 visualizations. It automatically detects the file type from the extension (e.g., `.png`, `.pdf`, `.svg`) and handles high-resolution output.

## Usage
`ggsave(filename, plot = last_plot(), dpi = 300, width = NA, height = NA, units = c("in", "cm", "mm", "px"))`

| Argument | Description |
| :--- | :--- |
| `filename` | The path and name of the file to save. |
| `plot` | The plot object to save (defaults to the last plot displayed). |
| `dpi` | Resolution (dots per inch). Use 300+ for print. |
| `width`/`height` | Physical dimensions of the output. |
| `bg` | Background color (e.g., "white", "black"). |

## Examples

### Basic Save
```r
library(ggplot2)

g <- ggplot(maacs, aes(x = logpm25, y = NocturnalSympt)) +
  geom_point()

# Saves the plot object 'g' to a high-res PNG
ggsave("my_plot.png", plot = g, dpi = 300)
```

### Advanced Export (Dimensions & Background)
From Lecture 11:
```r
# Saving with specific dimensions in millimeters and a black background
ggsave("outputs/maacs_plot.png", 
       plot = g, 
       dpi = 600, 
       width = 150, 
       height = 100, 
       units = "mm", 
       bg = "black")
```

## Related Functions
- [Built-in Themes](visual_customization_overview.md): Customizing the look before saving.
- [Theme Adjustments](theme_adjustments.md): Fine-grained control over colors.
