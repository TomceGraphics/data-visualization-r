---
tags:
  - visualization-paradigm
  - ggplot2
  - lattice
  - lecture-11
  - lecture-12
---
# Lattice vs. ggplot2

!!! abstract "Choosing Your Tool"
    R has two primary systems for advanced data visualization: **ggplot2** (based on the Grammar of Graphics) and **Lattice** (based on Trellis graphics). While both can create similar plots, their underlying logic is very different.

## Comparison at a Glance

| Feature | ggplot2 | Lattice |
| :--- | :--- | :--- |
| **Logic** | Layers (The Grammar of Graphics) | Conditioning (Trellis Graphics) |
| **Syntax** | Iterative (`+` operator) | Single-call (Formula interface) |
| **Multi-panel** | Faceting (`facet_wrap`, `facet_grid`) | Conditioning (`y ~ x \| g`) |
| **Customization** | Global `theme()` function | `par.settings` and custom `panel` functions |
| **Output Type** | ggplot object | trellis object |

---

## 1. Syntax Style
### ggplot2: The Layered Approach
In ggplot2, you start with a data frame and add layers one by one. This is very intuitive for building complex plots step-by-step.

```r
ggplot(maacs, aes(x = logpm25, y = NocturnalSympt)) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(~ bmicat)
```

### Lattice: The Formula Approach
In Lattice, you describe the entire plot relationship in a single formula. It is often faster for generating multi-panel "conditioned" plots.

```r
xyplot(NocturnalSympt ~ logpm25 | bmicat, 
       data = maacs, 
       type = c("p", "smooth"))
```

## 2. Customization Philosophy
*   **ggplot2** uses a high-level `theme()` system. You can change everything from font sizes to background colors using named arguments.
*   **Lattice** provides low-level control through **Panel Functions**. If you want to add a custom line or calculation to every panel, you write a function that describes exactly what to draw inside the grid.

## 3. When to Use Which?
*   **Use ggplot2** if you want a modern, highly customizable "publication-ready" plot and prefer building layers iteratively.
*   **Use Lattice** if you are performing rapid exploratory data analysis, especially when you need to condition your plots on many variables simultaneously.

## Related Guides
- [Lattice Overview](lattice_overview.md)
- [ggplot2 Themes](visual_customization_overview.md)
- [Multi-panel Layouts](lattice_panels.md)
