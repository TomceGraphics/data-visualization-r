# stripplot and dotplot

xyplot(Ozone ~ Wind,
data = airquality,
type = c("p", "g"),
xlab = "Wind Speed (mph)",
ylab = "Ozone (ppb)",
main = "Ozone vs Wind Speed in New York")

aq <- airquality
aq$Month<- factor(aq$Month, 
levels = 5:9, 
labels = c("May", "Jun", "Jul", "Aug", "Sep"))

# Conditioned scatter — one panel per month
xyplot(Ozone ~ Wind | Month,
data   = aq,
layout = c(5, 1),   # 5 cols, 1 row
xlab   = "Wind (mph)",
ylab   = "Ozone (ppb)",
main   = "Ozone vs Wind by Month")

xyplot(Ozone ~ Wind | Month, data = aq,
  layout = c(5, 1))

  xyplot(Ozone ~ Wind | Month, data = aq,
layout = c(5, 1),
scales = list(relation = "free"))
 
xyplot(Ozone ~ Wind | Month, data = aq,
scales = list(
    x = list(relation = "same"),
    y = list(relation = "free")))
 
 xyplot(Sepal.Length ~ Petal.Length,
data     = iris,
groups   = Species,
type = c("p", "g", "smooth"),
auto.key = TRUE,  # automatic legend
pch      = c(1, 2, 16),
col      = c("#E74C3C","#3498DB","#2ECC71")
)

set.seed(10)
x <- rnorm(100)
f <- rep(0:1, each = 50)
y <- x + f - f*x + rnorm(100, sd = 0.5)
f <- factor(f, labels = c("Group 1","Group 2"))

xyplot(y ~ x | f, layout = c(2, 1),
panel = function(x, y, ...) {
    panel.xyplot(x, y, ...)       # points first
    panel.abline(h = median(y),  # median line
      lty = 2, col = "red", lwd = 2)
}
)

xyplot(y ~ x | f, layout = c(2, 1),
panel = function(x, y, ...) {
    panel.xyplot(x, y, ...)   # draw points
    panel.lmline(x, y,        # regression line
      col = "blue", lwd = 2)  # per this panel
}
)

xyplot(Ozone ~ Wind | Month,
data   = airquality,
panel  = function(x, y, ...) {
    panel.xyplot(x, y, ...)
    panel.loess(x, y, span = 0.8,
      col = "darkgreen", lwd = 2)
}
)

bwplot(len ~ dose, data = ToothGrowth,
xlab = "Dose (mg/day)",
ylab = "Tooth Length")

# Violin plot — replace panel function
bwplot(len ~ dose, data = ToothGrowth,
panel = panel.violin,
xlab  = "Dose (mg/day)",
ylab  = "Tooth Length")

bwplot(len ~ supp | dose,
data   = ToothGrowth,
layout = c(3, 1),
xlab   = "Supplement Type",
ylab   = "Tooth Length")

# Same but violin shapes
bwplot(len ~ supp | dose,
data   = ToothGrowth,
layout = c(3, 1),
panel  = panel.Violin)


