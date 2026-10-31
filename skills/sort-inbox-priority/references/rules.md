# Default triage rules

These defaults suit most personal inboxes. Put your own changes in a personal overrides
file (see `overrides.example.md` and `docs/CUSTOMISING.md`) rather than editing this
file, so upgrades don't overwrite them.

## High: act today

- **Security:** suspicious sign-ins, password or two-factor changes you didn't make,
  account compromise, critical vulnerabilities in services you use or run.
- **Service failures:** a payment failed, a card was declined, an account or service is
  suspended or about to stop working.
- **Money with a near deadline:** overdue bills, payment requests, tax or government
  deadlines within 14 days.
- **Real people asking you something directly:** a personal email from a human that asks
  a question or needs a reply.
- **Travel in the next 72 hours:** check-in, schedule changes, cancellations, missing
  documents.

## Medium: this week

- Bills to check before they are paid.
- Admin from schools, clubs, landlords or other organisations that needs a reply, a
  form or a payment.
- Deadlines further out: renewals, tax reminders, things that expire in the next month.
- Medical, legal or financial admin that needs you to do something.
- Notices from banks or other providers that need action (not routine statements).

## Low: glance and file

- Receipts, statements and invoices that are already paid.
- Renewal notices with no price or plan change.
- Personal FYIs from people that need no reply.
- Product or policy changes with a future effective date.

## Reviewed: no action needed

These get `Action/Reviewed` and are marked read once the user agrees.

- Newsletters, digests and news alerts.
- Saved-search, price-drop and deal alerts.
- Marketing and promotions.
- Delivery updates and order confirmations for routine purchases.
- Review and feedback requests.
- Automated reports, unless they show an error or outage.
- Reminders for things whose date has already passed.

## Default noise senders

These senders almost never need action, so their threads are tagged `Action/Reviewed`
straight from the search results, without being read. If one of them sends something with
security, outage or payment-failure language in the subject, classify it anyway.

```
substack.com OR beehiiv.com OR googlealerts-noreply@google.com
```

Add your own noise senders in your overrides file. The skill joins both lists.
