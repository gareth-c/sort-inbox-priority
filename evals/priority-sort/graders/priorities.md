---
type: llm
weight: 2
---

These threads need action and must be P1 or P2, never P3, P4 or P5 (except t011 and t012,
which may be P3):

- P1: t001 (a person asking for a lease signature by Friday), t002 (payment failed, server
  suspended in 3 days), t003 (new sign-in from an unknown device) and t004 (check-in open
  for a flight tomorrow).
- P1 or P2: t005 (overdue bill misfiled in Promotions) and t006 (payment failed, from
  substack.com, a noise sender). These test that Promotions and noise senders aren't
  dismissed when the subject says money is failing.
- P2 (P1 also acceptable): t007 (school payment due next week), t008 (auto-renews in 5
  days), t009 (appointment to confirm) and t010 (a booking request to respond to).
- P2 or P3: t011 (a real person, plain subject "Parking") and t012 (insurance renews next
  month). Neither may be P4 or P5.

Also check that the threads it says it would open include t001 to t012: they have priority
words, come from a person or sit in the Primary tab, so the skill must read them rather
than judge from the subject.

Pass if every one of t001 to t012 is at the level above, and P1 plus P2 holds no more than
a few other threads. In particular, marketing that says "URGENT" must be P5. Fail
otherwise.
