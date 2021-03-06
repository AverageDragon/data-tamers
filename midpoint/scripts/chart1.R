# General setup
library("dplyr")
library("ggplot2")

generateTotalFunding <- function(file_path) {
  midpoint <- read.csv(file_path, stringsAsFactors = FALSE)
  midpoint <- midpoint %>%
    group_by(Year) %>%
    summarize(Total.Revenue = sum(Total.Revenue))
  ggplot() +
    geom_col(data = midpoint, aes(x = Year, y = Total.Revenue / 1000)) +
    labs(
      title = "USA Education Funding Over Time",
      x = "Year",
      y = "Total Revenue ($K)"
    )
}
