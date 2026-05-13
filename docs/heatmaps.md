---
tags:
  - visualization-types
  - ggplot2
  - lattice
  - lecture-11
  - lecture-12
---
# Heatmaps: Visualizing Intensity

!!! tip "What is a Heatmap?"
    A heatmap uses colors to represent values in a matrix or a 2D grid. It is excellent for identifying clusters, hot spots, or correlations in large datasets.

## 1. Heatmaps in ggplot2
In ggplot2, heatmaps are typically created using `geom_tile()` or `geom_raster()`. These functions require the data to be in "long" format (with columns for X, Y, and the Value).

### Basic Example
```r
library(ggplot2)

# Using a data frame with x, y, and z coordinates
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "steelblue") +
  theme_minimal() +
  labs(title = "Old Faithful Density Heatmap")
```

## 2. Heatmaps in Lattice
In Lattice, the `levelplot()` function is the standard tool for creating heatmaps. It can work directly with matrices or formulas.

### Basic Example
```r
library(lattice)

# Using the built-in volcano dataset
levelplot(volcano, 
          col.regions = terrain.colors(100), 
          main = "Maunga Whau Volcano Topography",
          xlab = "Longitude", 
          ylab = "Latitude")
```

## 3. Key Differences
*   **ggplot2 (`geom_tile`)**: Better for categorical heatmaps (like a correlation matrix) and offers more control over the color scales and legends via the `scale_fill_*` family.
*   **Lattice (`levelplot`)**: Highly optimized for 3D data and numeric matrices. It automatically includes a color key (legend) on the right.

## Tips for Better Heatmaps
1.  **Choose the Right Palette**: Use diverging palettes (e.g., Red-Blue) for data with a meaningful center (like correlation) and sequential palettes (e.g., Blues) for magnitude.
2.  **Order Matters**: In categorical heatmaps, sorting your rows and columns (e.g., via clustering) can reveal patterns that are otherwise invisible.

## Related Guides
- [Lattice Overview](lattice_overview.md)
- [Lattice vs ggplot2](lattice_vs_ggplot2.md)
