-- SQL queries used for data cleaning, KPI creation, and analysis
-- Base cleaned driver engagement data
SELECT
    id_driver,
    country_code,
    service_type,
    COALESCE(acceptance_rate, 0) AS acceptance_rate,
    COALESCE(completion_rate, 0) AS completion_rate,
    COALESCE(cancellation_rate, 0) AS cancellation_rate,
    COALESCE(active_days, 0) AS active_days,
    tenure_days,
    total_offers,
    total_bookings,
    total_rides,
    CASE
        WHEN tenure_days BETWEEN 0 AND 30 THEN '0-30 days'
        WHEN tenure_days BETWEEN 31 AND 90 THEN '31-90 days'
        WHEN tenure_days BETWEEN 91 AND 180 THEN '91-180 days'
        ELSE '180+ days'
    END AS tenure_bucket
FROM rides_project_driver_engagement_master;
-- Overall KPIs
SELECT
    COUNT(DISTINCT id_driver) AS total_drivers,
    AVG(acceptance_rate) AS avg_acceptance_rate,
    AVG(completion_rate) AS avg_completion_rate,
    AVG(cancellation_rate) AS avg_cancellation_rate,
    AVG(active_days) AS avg_active_days
FROM rides_project_driver_engagement_master;
-- Booking funnel metrics
SELECT
    SUM(total_offers) AS total_offers,
    SUM(total_bookings) AS total_bookings,
    SUM(total_rides) AS total_rides
FROM rides_project_driver_engagement_master;
-- Completion rate by service type
SELECT
    service_type,
    AVG(completion_rate) AS avg_completion_rate
FROM rides_project_driver_engagement_master
GROUP BY service_type;
-- Completion rate by tenure bucket
SELECT
    CASE
        WHEN tenure_days BETWEEN 0 AND 30 THEN '0-30 days'
        WHEN tenure_days BETWEEN 31 AND 90 THEN '31-90 days'
        WHEN tenure_days BETWEEN 91 AND 180 THEN '91-180 days'
        ELSE '180+ days'
    END AS tenure_bucket,
    AVG(completion_rate) AS avg_completion_rate
FROM rides_project_driver_engagement_master
GROUP BY tenure_bucket
ORDER BY tenure_bucket;
