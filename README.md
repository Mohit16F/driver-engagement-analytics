# Driver Engagement Analytics

## Project Overview
This project analyzes driver engagement and ride performance data using SQL and Power BI. 
The objective is to understand driver behavior, service performance, and operational efficiency 
to support data-driven business decisions in a ride-hailing context.

## Business Problem
Ride-hailing platforms need to monitor driver engagement and service performance to:
- Improve acceptance and completion rates
- Reduce cancellations
- Understand differences across service types, tenure, and regions

## Dataset
The dataset contains driver-level metrics including:
- Driver ID, country, service type
- Total offers, bookings, and rides
- Acceptance, completion, and cancellation rates
- Driver tenure and activity levels

## Data Cleaning & Preparation (SQL)
- Handled missing values using CASE WHEN logic based on business relevance
- Removed duplicate driver records
- Created tenure buckets (0–30, 31–90, 91–180, 180+ days)
- Derived KPIs such as acceptance rate, completion rate, and cancellation rate

## Key Analysis & KPIs
- Total Drivers
- Average Acceptance Rate
- Average Completion Rate
- Average Cancellation Rate
- Average Active Days
- Funnel analysis: Offers → Bookings → Rides

## Power BI Dashboard
The dashboard provides:
- High-level KPI cards for quick insights
- Funnel view of offers, bookings, and completed rides
- Completion rate comparison by service type (PHV vs TAXI)
- Completion rate analysis by driver tenure
- Interactive slicers for country, service type, and tenure bucket

## Insights
- Drivers with higher tenure show better completion rates
- TAXI service shows slightly higher completion consistency than PHV
- Significant drop observed between total offers and bookings, indicating acceptance optimization opportunities

## Tools & Technologies
- SQL (data cleaning, aggregation, KPI calculation)
- Power BI (dashboarding, DAX measures, slicers)
- Excel (initial data inspection)

## Outcome
This project demonstrates the ability to:
- Translate raw data into business-ready insights
- Build clean, interactive dashboards
- Explain analytical decisions clearly in interviews

## Author
Mohit Bhamidi  
