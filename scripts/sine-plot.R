library(ggplot2)
freq <- 261 # middle C
period <- 1 / 261
x <- seq(0, period * 2, length.out = 1000)
y <- sin(x * freq * 2 * pi)
svg("images/sine.svg", width = 9, height = 6)
theme_set(theme_gray(base_size = 18))
qplot(x, y, geom = "line", xlab = "Time", ylab = "Amplitude") +
  geom_segment(aes(x = period, xend = period * 2, y = 0.3, yend = 0.3), colour = "blue") +
  geom_segment(aes(x = period, xend = period, y = 0.25, yend = 0.35), colour = "blue") +
  geom_segment(aes(x = period * 2, xend = period * 2, y = 0.25, yend = 0.35), colour = "blue") +
  geom_text(aes(x = period * 1.5, y = 0.35, label = "Period"), colour = "blue", hjust = 0.5)
dev.off()
