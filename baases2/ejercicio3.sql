--Ejercicio 3
SELECT channelGrouping,pageviews,  (pageviews/sum(pageviews) over()) as percentage_t,AVG(percentage_t) promedio
FROM `bigquery-publicdata.google_analytics_sample.ga_sessions_20170801`;