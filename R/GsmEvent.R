# install.packages("R6")
library(R6)

# Defining CIR6 class:  ---------------------------------------------
GSMEvent <- R6Class(
  classname = "GSMEvent",
  public = list(
    portable = FALSE,
    cloneable = FALSE,

    # CIR6 class fields ---------------------------------------------
    hash_number_A = "factor",
    hash_tariff   = "factor",
    event         = "factor",
    event_sub     = "factor",
    network_service_direction = "factor",
    event_start_date          = "factor",
    LAT                       = "factor",
    LON                       = "factor" ,
    cost                      = "numeric",
    hash_number_B             = "factor",
    number_B_category         = "factor",
    call_duration_minutes     = "numeric",
    data_volume_mb            = "numeric",
    hash_accum_code      = "factor",
    device_type          = "factor",
    phone_price_category = "factor",

    # CIR6 class initialize method ---------------------------------------------
    initialize = function(hash_number_A = "1",
                          hash_tariff   = "1",
                          event         = "1",
                          event_sub     = "1",
                          network_service_direction = "1",
                          event_start_date          = "1",
                          LAT                       = "1",
                          LON                       = "1" ,
                          cost                      = 1,
                          hash_number_B             = "1",
                          number_B_category         = "1",
                          call_duration_minutes     = 1,
                          data_volume_mb            = 1,
                          hash_accum_code      = "1",
                          device_type          = "1",
                          phone_price_category = "1"
                          ) {
      self$hash_number_A <- hash_number_A
      self$hash_tariff   <- hash_tariff
      self$event         <- event
      self$event_sub     <- event_sub
      self$network_service_direction <- network_service_direction
      self$event_start_date          <- event_start_date
      self$LAT                       <- LAT
      self$LON                       <- LON
      self$cost                      <- cost
      self$hash_number_B             <- hash_number_B
      self$number_B_category         <- number_B_category
      self$call_duration_minutes     <- call_duration_minutes
      self$data_volume_mb            <- data_volume_mb
      self$hash_accum_code           <- hash_accum_code
      self$device_type               <- device_type
      self$phone_price_category      <- phone_price_category
    },

    # CIR6 class methods ---------------------------------------------
    set_hash_number_A = function(value) {
      self$hash_number_A <- value
    },
    get_hash_number_A = function() {
      self$hash_number_A
    },
    set_hash_tariff = function(value) {
      self$hash_tariff <- value
    },
    get_hash_tariff = function() {
      self$hash_tariff
    },
    set_event = function(value) {
      self$event <- value
    },
    get_event = function() {
      self$event
    },
    set_event_sub = function(value) {
      self$event_sub <- value
    },
    get_event_sub = function() {
      self$event_sub
    },
    set_network_service_direction = function(value) {
      self$network_service_direction <- value
    },
    get_network_service_direction = function() {
      self$network_service_direction
    },
    set_event_start_date = function(value) {
      self$event_start_date <- value
    },
    get_event_start_date = function() {
      self$event_start_date
    },
    set_LAT = function(value) {
      self$LAT <- value
    },
    get_LAT = function() {
      self$LAT
    },
    set_LON = function(value) {
      self$LON <- value
    },
    get_LON = function() {
      self$LON
    },
    set_cost = function(value) {
      self$cost <- value
    },
    get_cost = function() {
      self$cost
    },
    set_hash_number_B = function(value) {
      self$hash_number_B <- value
    },
    get_hash_number_B = function() {
      self$hash_number_B
    },
    set_number_B_category = function(value) {
      self$number_B_category <- value
    },
    get_number_B_category = function() {
      self$number_B_category
    },
    set_call_duration_minutes = function(value) {
      self$call_duration_minutes <- value
    },
    get_call_duration_minutes = function() {
      self$call_duration_minutes
    },
    set_data_volume_mb = function(value) {
      self$data_volume_mb <- value
    },
    get_data_volume_mb = function() {
      self$data_volume_mb
    },
    set_hash_accum_code = function(value) {
      self$hash_accum_code <- value
    },
    get_hash_accum_code = function() {
      self$hash_accum_code
    },
    set_device_type = function(value) {
      self$device_type <- value
    },
    get_device_type = function() {
      self$device_type
    },
    set_phone_price_category = function(value) {
      self$phone_price_category <- value
    },
    get_phone_price_category = function() {
      self$phone_price_category
    }
  )
)
