#  Product Persona & Strategic Foundation

**Platform:** Investor Intelligence
**Crafted by:** Aditya, with Ana
**Persona:** *Anamika Gurjar – The Portfolio Purist*

---

##  Who is Anamika Gurjar?

| Field       | Detail                                                                 |
|-------------|------------------------------------------------------------------------|
| Name        | Anamika Gurjar                                                         |
| Role        | Portfolio Analyst – Long-term Fundamental Focus                        |
| Age         | 28                                                                     |
| Background  | Studied economics & philosophy. Self-taught in finance, driven by the why behind market movements. |
| Personality | Calm, introspective, high-conviction thinker. Seeks signal over noise. Believes finance is a lens to study truth. |

---

## Investment Philosophy & Mental Model

> “A single clean ROE graph tells me more than a hundred cluttered indicators.”

- Sees companies like people: character, resilience, growth under pressure.
- Hates noise and flashy charts — values clarity and fundamental insight.
- Believes in long-term theses, not short-term hype.
- Doesn’t chase — she investigates.

---

## Daily Workflow

| Time     | Task                                                                 |
|----------|----------------------------------------------------------------------|
| 8:30 AM  | Check overnight movements, earnings results, score deltas on top 10 holdings |
| 12:00 PM | Deep read: 1 annual report or investor deck; update personal watchlist |
| 9:00 PM  | Reflect on score changes (not prices); journal long-term insights     |

---

##  What Frustrates Her

- “PE 98, ROE 3” stocks promoted like gold.
- Tools with data but no story or attribution.
- Dashboards that don’t answer:
  > “Is my portfolio getting better or worse?”

---

## What She Needs from the Platform

| # | Business Question                      | Why It Matters to Her                        | Platform Response                                                                 |
|---|----------------------------------------|----------------------------------------------|------------------------------------------------------------------------------------|
| 1 | Which stocks are drifting from my thesis? | She protects her conviction, not her ego.     | Flags score drops due to ROE↓, D/E↑, or earnings shock                            |
| 2 | Are there hidden gems I’m missing?     | Seeks understated strength, not noise.       | Uses percentile logic to rank quality undervalued picks                           |
| 3 | Why did this score fall?               | Trust builds through transparency.           | Score attribution: “Score ↓ 0.3: ROE ↓ 2%, D/E ↑ 10%”                             |
| 4 | Is my portfolio quality improving?     | Trends matter more than moments.             | Shows PE/ROE evolution over time                                                  |
| 5 | Where should I spend my research time? | Hates wasting time on noise.                 | Weekly report with top movers, drift alerts                                       |
| 6 | Is any sector turning unhealthy?       | She watches systemic weakness.               | Sector score heatmaps & metric drift detection                                    |

---

##  Scoring Logic – Grounded, Transparent, Trustable

| Step | Action             | Description                                                                 |
|------|--------------------|-----------------------------------------------------------------------------|
| 1    | Select Metrics     | ROE, EPS Growth, D/E, Profit Margin, PE                                     |
| 2    | Normalize          | Z-score or percentile transformation                                        |
| 3    | Invert Where Needed| PE and D/E → lower is better → multiply score by -1                         |
| 4    | Weighting          | ROE (30%), EPS Growth (25%), D/E (15%), Profit Margin (20%), PE (10%)       |
| 5    | Composite Score    | Weighted sum of normalized metrics                                          |
| 6    | Store & Archive    | Daily inserts to fundamentals_score table                                   |
| 7    | Attribution Layer  | Track and display which metrics caused score change                         |

 *Future Ready:* Scoring profiles can adapt — Value mode, Growth mode, Risk-Off mode.

---

## Data Quality & Monitoring Strategy

| Layer               | Approach                                                            |
|---------------------|---------------------------------------------------------------------|
| Scraper Resilience  | Detect HTML drift from Screener.in; raise alerts                    |
| Missing Fields      | Parse safely; log NULLs; highlight missing in UI                    |
| Retry Logic         | Auto-retry 3× with exponential backoff                              |
| Score Drift Tracking| Weekly reports of average score shift, sector-wide anomalies        |
| Daily Logs          | Track: scraped tickers, failures, schema warnings                   |

---

##  Dashboard Blueprint (For Anamika)

###  Morning Dashboard  
> *“Clarity in 30 seconds.”*

- Top 3 stocks needing attention (with attribution)
- Overnight score shifts
- Watchlist additions/alerts

### ��� Portfolio Quality

- ROE, PE, EPS Growth trendlines (1M, 3M, 6M)
- Sector-wise health heatmaps
- Score trajectory of holdings

### Explore & Filter

- Table view with scores + filters
- Expandable insights: historical trends, score logic
- Watchlist tagging

### Weekly Report (Auto-PDF)

- Top risers & fallers
- “Silent Drift” detection: degrading fundamentals despite stable price
- “Anamika’s Research Picks”

---
