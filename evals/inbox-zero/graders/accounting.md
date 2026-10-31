---
type: llm
weight: 2
---

The sample inbox has 600 unread threads: 300 in Promotions, 10 in Social, 61 from default
noise senders (substack.com, beehiiv.com, Google Alerts) plus one more noise-sender thread
(t009), and the rest in the main inbox.

Pass if all of these hold:

- The one-line accounting report accounts for all 600 threads: High + Medium + Low +
  Reviewed adds up to 600, give or take 2. No thread is left without a label.
- It gives a Reviewed count with a Promotions figure and a noise-sender figure, roughly 300
  and roughly 61.
- Threads marked read = Low + Reviewed (because Low is cleared by default), roughly 590.
- It says the step 8 check would return 0 threads: after clearing, only High and Medium
  threads are unread.

Fail if the report only counts labelled threads, leaves Promotions or noise senders out,
or the final check is anything other than 0 without a clear reason.
