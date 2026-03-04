# Payment Funnel Analysis

_Uncovering where and why subscriptions are failing to convert — and what we can do about it._

![SQL](https://img.shields.io/badge/SQL-Snowflake-4479A1) ![Notebook](https://img.shields.io/badge/Notebook-Hex-8A2BE2) ![Status](https://img.shields.io/badge/Status-Complete-brightgreen)

---

## Executive Summary

A significant number of subscriptions remain unpaid, indicating real friction in the online payment process that is directly impacting revenue. This analysis digs into the payment portal data to identify exactly where users are dropping off, quantify the error rate, and deliver clear, actionable recommendations to improve payment conversion.

Using SQL and a data science notebook, I built a full product funnel analysis — from the moment a user opens the payment widget all the way through to a completed subscription.

---

## Business Problem

The finance team flagged that a large portion of subscriptions were not being paid. The core question: **Is there friction in the payment portal that is preventing users from completing payment?**

To answer that, I analyzed the full payment funnel to identify which stages users drop off at, measure payment error rates on both the user side and vendor side, and surface patterns that explain low conversion.

_Add visualization here: funnel chart or bar chart showing subscription counts at each payment stage_

---

## Methodology

| Step | Description |
|---|---|
| Exploratory Data Analysis | Explored the payment status log to understand the subscription lifecycle and data structure |
| Product Funnel Analysis | Mapped each subscription through funnel stages and measured drop-off and error rates at each step |
| Data Visualization | Built charts to communicate error distribution and funnel conversion clearly |

---

## Skills Used

- SQL: CTEs, CASE statements, Subqueries, Window Functions
- - Data Visualization: Bar charts, funnel analysis charts
  - - Data Wrangling and Cleaning
    - - Data Science Notebook (Hex)
      - - Cloud Data Warehouse (Snowflake)
       
        - ---

        ## Results

        _Add your visualizations here with clear titles and axis labels_

        | Metric | Value |
        |---|---|
        | % of subscriptions that hit a payment error | ~16.9% |
        | % of subscriptions that never opened the payment portal | 40.68% |
        | % of subscriptions that completed payment successfully |20.34X% |

        ---

        ## Business Recommendations

        **1. Reduce friction at the payment entry step**

        Add support for Apple Pay, Google Pay, or saved payment methods so users do not have to manually enter card details every time. This directly addresses user-side errors caused by incorrect or mistyped payment information.

        **2. Address vendor-side processing errors**

        Escalate to the third-party payment processor to investigate the root cause of vendor-side failures and establish a clear plan to reduce their frequency going forward.

        **3. Re-engage users who never started the payment process**

        A significant segment of subscriptions has not even opened the payment portal, meaning revenue is lost before the funnel begins. Automated payment reminders, in-app nudges, or proactive customer outreach could meaningfully improve this.

        **4. Improve the payment widget UX**

        Simplify the payment flow with fewer steps, clearer real-time error messages, and better mobile optimization to reduce user-side drop-off.

        ---

        ## Next Steps

        - Drill deeper into error types to break out vendor errors vs. user errors and understand where to prioritize first
        - Investigate the segment that never started the payment process to determine if this is a product awareness gap or a UX barrier
        - Segment the funnel by user cohort to analyze whether error rates differ by subscription plan, signup date, or device type
        - Establish a conversion baseline now so that improvements can be accurately measured after changes are implemented
        - Monitor post-fix impact by re-running this analysis after UX or vendor improvements to quantify the lift in successful payments
               
                - ---

                ## File Structure

                ```
                payment-funnel-analysis/
                |
                |-- README.md
                |-- queries/
                    |-- 01_error_rate_cte.sql
                    |-- 02_error_rate_subquery.sql
                    |-- 03_has_error_flag.sql
                ```
