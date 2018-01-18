# install.packages("R6")
library(R6)

# Defining CIR6 class:  ---------------------------------------------
GSMSubscriber <- R6Class(
  classname = "GSMSubscriber",
  public = list(
    portable = FALSE,
    cloneable = FALSE,

    # CIR6 class fields -- general ---------------------------------------------
    hash_number_A = "list",
    # hash_tariff   = "list",
    # event         = "list",
    # event_sub     = "list",
    # cost                      = "list",
    # call_duration_minutes     = "list",
    # data_volume_mb            = "list",
    # device_type          = "list",
    # phone_price_category = "list",
    # interest  = "list",
    # dropped_calls = "list",
    # dropped_calls_ratio = "list",

    # CIR6 class fields -- a subscriber portrait ----
    # Billing section
    billing_tariff.plan = "list",
    billing_arpu = "list",
    billing_usage = "list",
    billing_top.up = "list",
    # Service usage
    service.usage_renewal = "list",
    service.usage_interest.in.new.service = "list",
    service.usage_ott.stream = "list",
    service.usage_last.update = "list",
    # Predictive model
    pred.model_churn.score = "list",
    pred.model_mnp.out = "list",
    pred.model_change.tariff = "list",
    pred.model_winback = "list",
    # Social data
    social.data_age = "list",
    social.data_sex = "list",
    social.data_ethnic.group = "list",
    social.data_marriage = "list",
    social.data_household = "list",
    social.data_wager = "list",
    # Technical stream
    tech.stream_out.of.service = "list",
    tech.stream_drop.calls = "list",
    tech.stream_data.speed = "list",
    tech.stream_location = "list",
    # Value management
    value.mngt_life.stage = "list",
    value.mngt_value.over.time = "list",
    value.mngt_mnp.in.out = "list",
    value.mngt_margin.optimisation = "list",
    # Web data
    web.data_cookie = "list",
    web.data_browsing.history = "list",
    web.data_adblock = "list",
    web.data_popular.url = "list",
    web.data_click.rate = "list",
    # Device
    device_type = "list",
    device_price = "list",
    device_applications = "list",
    device_last.update = "list",

    # CIR6 class initialize method ---------------------------------------------
    initialize = function(hash_number_A = "1",
                          billing_tariff.plan = "1",
                          billing_arpu = "1",
                          billing_usage = "1",
                          billing_top.up = "1",
                          # Service usage
                          service.usage_renewal = "1",
                          service.usage_interest.in.new.service = "1",
                          service.usage_ott.stream = "1",
                          service.usage_last.update = "1",
                          # Predictive model
                          pred.model_churn.score = "1",
                          pred.model_mnp.out = "1",
                          pred.model_change.tariff = "1",
                          pred.model_winback = "1",
                          # Social data
                          social.data_age = "1",
                          social.data_sex = "1",
                          social.data_ethnic.group = "1",
                          social.data_marriage = "1",
                          social.data_household = "1",
                          social.data_wager = "1",
                          # Technical stream
                          tech.stream_out.of.service = "1",
                          tech.stream_drop.calls = "1",
                          tech.stream_data.speed = "1",
                          tech.stream_location = "1",
                          # Value management
                          value.mngt_life.stage = "1",
                          value.mngt_value.over.time = "1",
                          value.mngt_mnp.in.out = "1",
                          value.mngt_margin.optimisation = "1",
                          # Web data
                          web.data_cookie = "1",
                          web.data_browsing.history = "1",
                          web.data_adblock = "1",
                          web.data_popular.url = "1",
                          web.data_click.rate = "1",
                          # Device
                          device_type = "1",
                          device_price = "1",
                          device_applications = "1",
                          device_last.update = "1"
                          # hash_tariff   = "1",
                          # event         = "1",
                          # event_sub     = "1",
                          # network_service_direction = "1",
                          # event_start_date          = "1",
                          # LAT                       = "1",
                          # LON                       = "1" ,
                          # cost                      = 1,
                          # hash_number_B             = "1",
                          # number_B_category         = "1",
                          # call_duration_minutes     = 1,
                          # data_volume_mb            = 1,
                          # hash_accum_code      = "1",
                          # device_type          = "1",
                          # phone_price_category = "1",
                          # interest_1  = "1",
                          # interest_2  = "1",
                          # interest_3  = "1",
                          # interest_4  = "1",
                          # interest_5  = "1"
                          ) {
      self$hash_number_A <- hash_number_A
      self$billing_tariff.plan <- billing_tariff.plan
      self$billing_arpu <- billing_arpu
      self$billing_usage <- billing_usage
      self$billing_top.up <- billing_top.up
      # Service usage
      self$service.usage_renewal <- service.usage_renewal
      self$service.usage_interest.in.new.service <- service.usage_interest.in.new.service
      self$service.usage_ott.stream <- service.usage_ott.stream
      self$service.usage_last.update <- service.usage_last.update
      # Predictive model
      self$pred.model_churn.score <- pred.model_churn.score
      self$pred.model_mnp.out <- pred.model_mnp.out
      self$pred.model_change.tariff <- pred.model_change.tariff
      self$pred.model_winback <- pred.model_winback
      # Social data
      self$social.data_age <- social.data_age
      self$social.data_sex <- social.data_sex
      self$social.data_ethnic.group <- social.data_ethnic.group
      self$social.data_marriage <- social.data_marriage
      self$social.data_household <- social.data_household
      self$social.data_wager <- social.data_wager
      # Technical stream
      self$tech.stream_out.of.service <- tech.stream_out.of.service
      self$tech.stream_drop.calls <- tech.stream_drop.calls
      self$tech.stream_data.speed <- tech.stream_data.speed
      self$tech.stream_location <- tech.stream_location
      # Value management
      self$value.mngt_life.stage <- value.mngt_life.stage
      self$value.mngt_value.over.time <- value.mngt_value.over.time
      self$value.mngt_mnp.in.out <- value.mngt_mnp.in.out
      self$value.mngt_margin.optimisation <- value.mngt_margin.optimisation
      # Web data
      self$web.data_cookie <- web.data_cookie
      self$web.data_browsing.history <- web.data_browsing.history
      self$web.data_adblock <- web.data_adblock
      self$web.data_popular.url <- web.data_popular.url
      self$web.data_click.rate <- web.data_click.rate
      # Device
      self$device_type <- device_type
      self$device_price <- device_price
      self$device_applications <- device_applications
      self$device_last.update <- device_last.update
      # self$hash_tariff   <- hash_tariff
      # self$event         <- event
      # self$event_sub     <- event_sub
      # self$network_service_direction <- network_service_direction
      # self$event_start_date          <- event_start_date
      # self$LAT                       <- LAT
      # self$LON                       <- LON
      # self$cost                      <- cost
      # self$hash_number_B             <- hash_number_B
      # self$number_B_category         <- number_B_category
      # self$call_duration_minutes     <- call_duration_minutes
      # self$data_volume_mb            <- data_volume_mb
      # self$hash_accum_code           <- hash_accum_code
      # self$device_type               <- device_type
      # self$phone_price_category      <- phone_price_category
      # self$interest_1   <- interest_1
      # self$interest_2   <- interest_2
      # self$interest_3   <- interest_3
      # self$interest_4   <- interest_4
      # self$interest_5   <- interest_5
    },

    # CIR6 class methods -- general ------------
    set_hash_number_A = function(value) {
      self$hash_number_A <- value
    },
    get_hash_number_A = function() {
       self$hash_number_A
    },
    # set_hash_tariff = function(value) {
    #   self$hash_tariff <- value
    # },
    # get_hash_tariff = function() {
    #   self$hash_tariff
    # },
    # set_event = function(value) {
    #   self$event <- value
    # },
    # get_event = function() {
    #   self$event
    # },
    # set_event_sub = function(value) {
    #   self$event_sub <- value
    # },
    # get_event_sub = function() {
    #   self$event_sub
    # },
    # set_network_service_direction = function(value) {
    #   self$network_service_direction <- value
    # },
    # get_network_service_direction = function() {
    #   self$network_service_direction
    # },
    # set_event_start_date = function(value) {
    #   self$event_start_date <- value
    # },
    # get_event_start_date = function() {
    #   self$event_start_date
    # },
    # set_LAT = function(value) {
    #   self$LAT <- value
    # },
    # get_LAT = function() {
    #   self$LAT
    # },
    # set_LON = function(value) {
    #   self$LON <- value
    # },
    # get_LON = function() {
    #   self$LON
    # },
    # set_cost = function(value) {
    #   self$cost <- value
    # },
    # get_cost = function() {
    #   self$cost
    # },
    # set_hash_number_B = function(value) {
    #   self$hash_number_B <- value
    # },
    # get_hash_number_B = function() {
    #   self$hash_number_B
    # },
    # set_number_B_category = function(value) {
    #   self$number_B_category <- value
    # },
    # get_number_B_category = function() {
    #   self$number_B_category
    # },
    # set_call_duration_minutes = function(value) {
    #   self$call_duration_minutes <- value
    # },
    # get_call_duration_minutes = function() {
    #   self$call_duration_minutes
    # },
    # set_data_volume_mb = function(value) {
    #   self$data_volume_mb <- value
    # },
    # get_data_volume_mb = function() {
    #   self$data_volume_mb
    # },
    # set_hash_accum_code = function(value) {
    #   self$hash_accum_code <- value
    # },
    # get_hash_accum_code = function() {
    #   self$hash_accum_code
    # },
    # set_device_type = function(value) {
    #   self$device_type <- value
    # },
    # get_device_type = function() {
    #   self$device_type
    # },
    # set_phone_price_category = function(value) {
    #   self$phone_price_category <- value
    # },
    # get_phone_price_category = function() {
    #   self$phone_price_category
    # },
    # set_interest_1 = function(value) {
    #   self$interest_1 <- value
    # },
    # get_interest_1 = function() {
    #   self$interest_1
    # },
    # set_interest_2 = function(value) {
    #   self$interest_2 <- value
    # },
    # get_interest_2 = function() {
    #   self$interest_2
    # },
    # set_interest_3 = function(value) {
    #   self$interest_3 <- value
    # },
    # get_interest_3 = function() {
    #   self$interest_3
    # },
    # set_interest_4 = function(value) {
    #   self$interest_4 <- value
    # },
    # get_interest_4 = function() {
    #   self$interest_4
    # },
    # set_interest_5 = function(value) {
    #   self$interest_5 <- value
    # },
    # get_interest_5 = function() {
    #   self$interest_5
    # }
    # CIR6 class methods -- general
    set_billing_tariff.plan = function(value) {
     self$billing_tariff.plan = value
   },
   get_billing_tariff.plan = function() {
     self$billing_tariff.plan
   },
   set_billing_arpu = function(value) {
     self$billing_arpu = value
   },
   get_billing_arpu = function() {
     self$billing_arpu
   },
   set_billing_usage = function(value) {
     self$billing_usage = value
   },
   get_billing_usage = function() {
     self$billing_usage
    },
   set_billing_top.up = function(value) {
     self$billing_top.up = value
   },
   get_billing_top.up = function() {
     self$billing_top.up
   },
   set_service.usage_renewal = function(value) {
     self$service.usage_renewal = value
   },
   get_service.usage_renewal = function() {
     self$service.usage_renewal
   },
   set_service.usage_interest.in.new.service = function(value) {
     self$service.usage_interest.in.new.service = value
   },
   get_service.usage_interest.in.new.service = function() {
     self$service.usage_interest.in.new.service
   },
   set_service.usage_ott.stream = function(value) {
     self$service.usage_ott.stream = value
   },
   get_service.usage_ott.stream = function() {
     self$service.usage_ott.stream
   },
   set_service.usage_last.update = function(value) {
     self$service.usage_last.update = value
   },
   get_service.usage_last.update = function() {
     self$service.usage_last.update
   },
   set_pred.model_churn.score = function(value) {
     self$pred.model_churn.score = value
   },
   get_pred.model_churn.score = function() {
     self$pred.model_churn.score
   },
   set_pred.model_mnp.out = function(value) {
     self$pred.model_mnp.out = value
   },
   get_pred.model_mnp.out = function() {
     self$pred.model_mnp.out
   },
   set_pred.model_change.tariff = function(value) {
     self$pred.model_change.tariff = value
   },
   get_pred.model_change.tariff = function() {
     self$pred.model_change.tariff
   },
   set_pred.model_winback = function(value) {
     self$pred.model_winback = value
   },
   get_pred.model_winback = function() {
     self$pred.model_winback
   },
   set_social.data_age = function(value) {
     self$social.data_age = value
   },
   get_social.data_age = function() {
     self$social.data_age
   },
   set_social.data_sex = function(value) {
     self$social.data_sex = value
   },
   get_social.data_sex = function() {
     self$social.data_sex
   },
   set_social.data_ethnic.group = function(value) {
     self$social.data_ethnic.group = value
   },
   get_social.data_ethnic.group = function() {
     self$social.data_ethnic.group
   },
   set_social.data_marriage = function(value) {
     self$social.data_marriage = value
   },
   get_social.data_marriage = function() {
     self$social.data_marriage
   },
   set_social.data_household = function(value) {
     self$social.data_household = value
   },
   get_social.data_household = function() {
     self$social.data_household
   },
   set_social.data_wager = function(value) {
     self$social.data_wager = value
   },
   get_social.data_wager = function() {
     self$social.data_wager
   },
   set_tech.stream_out.of.service = function(value) {
     self$tech.stream_out.of.service = value
   },
   get_tech.stream_out.of.service = function() {
     self$tech.stream_out.of.service
   },
   set_tech.stream_drop.calls = function(value) {
     self$tech.stream_drop.calls = value
   },
   get_tech.stream_drop.calls = function() {
     self$tech.stream_drop.calls
   },
   set_tech.stream_data.speed = function(value) {
     self$tech.stream_data.speed = value
   },
   get_tech.stream_data.speed = function() {
     self$tech.stream_data.speed
   },
   set_tech.stream_location = function(value) {
     self$tech.stream_location = value
   },
   get_tech.stream_location = function() {
     self$tech.stream_location
   },
   set_value.mngt_life.stage = function(value) {
     self$value.mngt_life.stage = value
   },
   get_value.mngt_life.stage = function() {
     self$value.mngt_life.stage
   },
   set_value.mngt_value.over.time = function(value) {
     self$value.mngt_value.over.time = value
   },
   get_value.mngt_value.over.time = function() {
     self$value.mngt_value.over.time
   },
   set_value.mngt_mnp.in.out = function(value) {
     self$value.mngt_mnp.in.out = value
   },
   get_value.mngt_mnp.in.out = function() {
     self$value.mngt_mnp.in.out
   },
   set_value.mngt_margin.optimisation = function(value) {
     self$value.mngt_margin.optimisation = value
   },
   get_value.mngt_margin.optimisation = function() {
     self$value.mngt_margin.optimisation
   },
   set_web.data_cookie = function(value) {
     self$web.data_cookie = value
   },
   get_web.data_cookie = function() {
     self$web.data_cookie
   },
   set_web.data_browsing.history = function(value) {
     self$web.data_browsing.history = value
   },
   get_web.data_browsing.history = function() {
     self$web.data_browsing.history
   },
   set_web.data_adblock = function(value) {
     self$web.data_adblock = value
   },
   get_web.data_adblock = function() {
     self$web.data_adblock
   },
   set_web.data_popular.url = function(value) {
     self$web.data_popular.url = value
   },
   get_web.data_popular.url = function() {
     self$web.data_popular.url
   },
   set_web.data_click.rate = function(value) {
     self$web.data_click.rate = value
   },
   get_web.data_click.rate = function() {
     self$web.data_click.rate
   },
   set_device_type = function(value) {
     self$device_type = value
   },
   get_device_type = function() {
     self$device_type
   },
   set_device_price = function(value) {
     self$device_price = value
   },
   get_device_price = function() {
     self$device_price
   },
   set_device_applications = function(value) {
     self$device_applications = value
   },
   get_device_applications = function() {
     self$device_applications
   },
   set_device_last.update = function(value) {
     self$device_last.update = value
   },
   get_device_last.update = function() {
     self$device_last.update
   }
  )
)
