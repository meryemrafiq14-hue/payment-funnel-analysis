-- ============================================================
-- Query 3: Has-Error Flag per Subscription
-- Description: Assigns a binary has_error column to each
-- subscription (1 = encountered a payment error, 0 = no error)
-- using a LEFT JOIN against the error CTE.
-- Output: 59 rows with each subscription labeled 1 or 0
-- ============================================================

WITH error_subs AS (
      SELECT DISTINCT subscription_id
      FROM public.payment_status_log
      WHERE status_id = 0
  )

SELECT
    subs.subscription_id,
    CASE
        WHEN err.subscription_id IS NOT NULL THEN 1
        ELSE 0
    END AS has_error
FROM public.subscriptions subs
LEFT JOIN error_subs err
    ON subs.subscription_id = err.subscription_id;
