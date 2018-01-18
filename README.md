# Subscriber
An initial implementation of the subscriber profiles using S6 approach of R language.
According to some benchmarks, R6 provides the most flexible way of data structures implementation using object-oriented techniques. Among those of R language, it's R6 objects take as much memory as the plain S3 objects (for simplicity, functions), though they call for some tweaking too.
These data structures have been made in the form of a plain R package. As a result, a number of things intended to make the developer life to be easier (uncluding that boring setwd(...), install.packages(...), library(...) routine), are implemented right out of the box.
####Please, take notice I have not included the original data for because of privacy concerns.

Originally, this package was implemented to cover needs of a cellular provider. So the subscriber profile includes the following fields (self-explainable):
## Initial info
hash_number_A,
billing_tariff.plan,
billing_arpu,
billing_usage,
billing_top.up,
## Service usage
service.usage_renewal,
service.usage_interest.in.new.service,
service.usage_ott.stream,
service.usage_last.update,
## Predictive model
pred.model_churn.score,
pred.model_mnp.out,
pred.model_change.tariff,
pred.model_winback,
## Social data
social.data_age,
social.data_sex,
social.data_ethnic.group,
social.data_marriage,
social.data_household,
social.data_wager,
## Technical stream
tech.stream_out.of.service,
tech.stream_drop.calls,
tech.stream_data.speed,
tech.stream_location,
## Value management
value.mngt_life.stage,
value.mngt_value.over.time,
value.mngt_mnp.in.out,
value.mngt_margin.optimisation,
## Web data
web.data_cookie,
web.data_browsing.history,
web.data_adblock,
web.data_popular.url,
web.data_click.rate,
## Device
device_type,
device_price,
device_applications,
device_last.update,
hash_tariff  ,
event        ,
event_sub    ,
network_service_direction,
event_start_date         ,
LAT                      ,
LON ,
cost,
hash_number_B ,
number_B_category,
call_duration_minutes,
data_volume_mb,
hash_accum_code,
interest_1,
interest_2,
interest_3,
interest_4,
interest_5
