-- ============================================================
-- Query 1: Error Rate via CTE
-- Description: Calculates the percentage of subscriptions
-- that encountered a payment processing error (status_id = 0)
-- using a Common Table Expression (CTE).
-- Result: ~16.95% of subscriptions hit an error
-- ============================================================

WITH error_subs AS (
      SELECT DISTINCT subscription_id
      FROM public.payment_status_log
      WHERE status_id = 0
  )

SELECT
    COUNT(err.subscription_id) * 100 / COUNT(subs.subscription_id) AS perc_subs_hit_error
FROM public.subscriptions subs
LEFT JOIN error_subs err
    ON subs.subscription_id = err.subscription_id;
