library(ggplot2)

# Load the data
data_path <- "Lectures/lecture11/data/maacs1.csv"
maacs <- read.csv(data_path)

# Create the visualization
# Relationship between PM2.5 and Nocturnal Symptoms, faceted by BMI category
g <- ggplot(maacs, aes(x = logpm25, y = NocturnalSympt)) +
  geom_point(alpha = 0.5, color = "steelblue") +
  geom_smooth(method = "lm", se = FALSE, color = "firebrick") +
  facet_wrap(~ bmicat) +
  labs(
    title = "PM2.5 vs. Nocturnal Symptoms by BMI Category",
    subtitle = "Analysis of MAACS dataset",
    x = "Log PM2.5",
    y = "Nocturnal Symptoms (days)",
    caption = "Source: MAACS Study"
  ) +
  theme_bw(base_size = 14) +
  theme(
    strip.text = element_text(face = "bold"),
    plot.title = element_text(face = "bold", size = 16),
    legend.position = "top"
  )

# Display the plot
print(g)

# Save the plot and void them and background
ggsave("Lectures/lecture11/outputs/maacs_plot.png", plot = g, dpi = 600, width = 150, height = 100, units = "mm", bg = "black")