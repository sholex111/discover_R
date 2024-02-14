# Load the ggplot2 library
library(ggplot2)

# Create your data frame
df <- data.frame(value = c(200, 300, 200, 400, 700),
                 group = c("decile 1", "decile 2", "decile 3", "decile 4", "decile 5"))

# Change group to factor and order it from decile 1 to decile 5
df$group <- factor(df$group, levels = c("decile 5", "decile 4", "decile 3", "decile 2", "decile 1"))


# Define a custom color scale from red to green
my_colors <- c("#c82538", "#ff7e00", "#fafa6e", "#84ff00", "#2e7f18")

# Create the stacked bar chart
ggplot(df, aes(x = 1, y = value, fill = group)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = my_colors) +
  #coord_flip() +
  theme_minimal() +
  labs(x = NULL, y = NULL , title = "Stacked Bar Chart with Gradient Color") +
  theme(axis.title = element_blank(), axis.text = element_blank(), axis.ticks = element_blank(),
        legend.position = "none") +
  #geom_text(aes(label = paste(group, "\n", value)), vjust = 0.5, size = 4, position = "stack")
  geom_text(aes(label = paste(group, "\n", value)), size = 3, hjust = 0.5, vjust = 2, position = "stack")
  #geom_text(aes(label = group), size = 4, hjust = 0.5, vjust = 3, position = "stack")



