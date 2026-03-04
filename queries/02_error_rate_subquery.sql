-- ============================================================
-- Query 2: Error Rate via Subquery
-- Description: Calculates the percentage of subscriptions
-- that encountered a payment processing error (status_id = 0)
-- using a correlated subquery instead of a CTE.
-- Result: ~0.1695 (16.95%)
-- ============================================================

SELECT
    (
          SELECT COUNT(DISTINCT subscription_id)
          FROM public.payment_status_log
          WHERE status_id = 0
      ) / COUNT(*) AS perc_subs_hit_error
FROM public.subscriptions;
