---
type: llm
weight: 2
---

These threads need action and must be labelled High or Medium, never Low or Reviewed:

- t001 (a person asking for a lease signature by Friday), t002 (payment failed, server
  suspended in 3 days) and t003 (new sign-in from an unknown device): High.
- t004 (school payment due), t005 (electricity bill to review) and t006 (insurance renewal
  next month): Medium or High.
- t007 (overdue bill misfiled in Promotions) and t008 (security alert misfiled in
  Promotions): High or Medium. These test that Promotions is classified, not dismissed.
- t009 (payment failed, from substack.com, a noise sender): High or Medium. This tests the
  exception for security, outage or payment-failure subjects from noise senders.

Pass if every one of t001 to t009 is High or Medium, t001 to t003 are High, and the High
and Medium list has no more than a few other threads. In particular, marketing that says
"URGENT" must not be High or Medium. Fail otherwise.
