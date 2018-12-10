library(dplyr)
library(rpart)
library(arules)
library(arulesViz)
library(stringr)

# Function to create a data frame
rules_df = 
  function(rules) {data.frame(
    lhs = labels(lhs(rules)),
    rhs = labels(rhs(rules)), 
    rules@quality)}

aeon_db <- 
  read.csv(file.choose()) %>%
  mutate_if(is.integer, as.factor)

intx_resource <-
  aeon_db %>%
  select(Positive.MO, Negative.MO, starts_with("intx_resource")) 

#names(intx_resource) <- names(intx_resource) %>% str_replace("intx_resource_", "")

intx_resource_rules <-
  intx_resource %>%
  as("transactions") %>%
  apriori(parameter = list(supp = 0.01,
                           conf = 0.01,
                           maxlen = 3)) %>%
  subset(rhs %in% c("Negative.MO=1")) %>%
  subset(!(lhs %in% c("Positive.MO=0", "Negative.MO=0")))

intx_resource_rules_df <- rules_df(intx_resource_rules)


hist(intx_resource_rules_df$lift, nclass = 100)

inter_rules <-
  intx_resource_rules_df %>%
  filter(lift > 1.1 | lift < 0.9)

hist(inter_rules$lift, nclass = 100)
nrow(inter_rules)

hist(inter_rules$support, nclass = 100)

high_support <-
  inter_rules %>%
  filter(support > 0.01)

nrow(high_support)
hist(high_support$support)
hist(high_support$confidence)

good_rules_df <-
  high_support %>%
  filter(confidence > 0.2)

nrow(good_rules_df)

good_rules <-
  intx_resource_rules %>%
  subset((lift > 1.1 | lift < 0.9 & support > 0.19 & confidence > 0.20))

plot(good_rules, method = "scatterplot", engine = "htmlwidget")
plot(good_rules, method = "matrix", engine = "htmlwidget")
plot(good_rules, method = "graph", engine = "htmlwidget")
