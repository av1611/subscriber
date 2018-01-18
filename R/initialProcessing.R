library(data.table)
library(plyr)
library(dplyr)
Sys.getlocale()
Sys.setlocale(category = "LC_ALL", locale = "UTF-8")
Sys.setlocale("LC_ALL", 'ua_UA.UTF-8')
Sys.setlocale(category = "LC_ALL", locale="Russian")
data <- data.table::fread("data/BD_LAB_EXAMPLE_SAMPLE.csv", header = T, sep = ",")
dataTest <- data[1:1000, ]
dataTest$hash_number_A <- as.factor(dataTest$hash_number_A)
levels(dataTest$hash_number_A)

subscribers <- list()
levels_num <- length(levels(dataTest$hash_number_A))
for (i in seq_len(length(levels(dataTest$hash_number_A)))) {
  name_subscriber <- paste0("subscriber_", dataTest[i]$hash_number_A)
  # assign(name_subscriber, GSMSubscriber$new())
  subscriber <- GSMSubscriber$new()
  # assign(name_subscriber, subscriber)
  do.call("<-",list(name_subscriber, subscriber))
  cur_subscriber <- eval(parse(text = name_subscriber))
  cur_subscriber$set_hash_number_A(dataTest[i]$hash_number_A)
  subscribers <- list(subscribers, cur_subscriber)
  cat("Just added", name_subscriber, "\n")
}

for (i in seq_len(dim(dataTest)[1])) {
  dataTest[i, ]$hash_number_A
  dataTest[i, ]$hash_tariff

  name_subscriber <- paste0("subscriber_", dataTest[i]$hash_number_A)
  cur_subscriber <- eval(parse(text = name_subscriber))

  current_billing_tariff.plan <- cur_subscriber$get_billing_tariff.plan()
  updated_billing_tariff.plan <- list(current_billing_tariff.plan, (dataTest[i, ]$hash_tariff))
  cur_subscriber$set_billing_tariff.plan(updated_billing_tariff.plan)
  name_subscriber <- paste0("subscriber_", dataTest[i]$hash_number_A)
  # assign(name_subscriber, GSMSubscriber$new())
  subscriber <- GSMSubscriber$new()
  # assign(name_subscriber, subscriber)
  do.call("<-",list(name_subscriber, subscriber))
  cur_subscriber <- eval(parse(text = name_subscriber))
  cur_subscriber$set_hash_number_A(dataTest[i]$hash_number_A)
  subscribers <- list(subscribers, cur_subscriber)
  cat("Just added", name_subscriber, "\n")
}

