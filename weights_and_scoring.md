# Fundamentals Scoring – Design & Weighting Logic
> **Investor Intelligence Platform**  
> **Persona:** Anamika Gurjar – “Portfolio Purist”

---

## **Purpose**
Create a **transparent, explainable composite score** for each stock that captures quality, growth, risk, and valuation — aligning directly with Anamika’s research style:
* Focus on fundamentals over price
* See *why* scores change
* Compare across time & sectors

---

## **Metrics Selected & Rationale**

| Metric | Why it matters (Anamika's lens) |
|------|---------------------------------|
| **ROE (Return on Equity)** | Core quality indicator; how well equity generates returns |
| **ROCE (Return on Capital Employed)** | Broader capital efficiency including debt |
| **OPM (Operating Profit Margin)** | Shows operational strength and pricing power |
| **Sales Growth** | Top-line momentum — real business expansion |
| **Profit Growth** | Bottom-line momentum — efficiency + growth |
| **EPS** | Per-share profitability; dilution-aware |
| **Debt-to-Equity (D/E)** | Solvency risk; high debt = fragile thesis |
| **Interest Coverage Ratio (ICR)** | Cash flow ability to service debt |
| **PE Ratio** | Market’s valuation of earnings; high → expensive |
| **PEG Ratio** | Growth-adjusted valuation; high PEG → overvalued relative to growth |
| **Price to Free Cash Flow (PFCF)** | FCF valuation; shows cash-rich vs accrual earnings |

---

## **Weighting Strategy**

> Weights reflect Anamika’s conviction: **Quality > Growth > Risk > Valuation**

| Dimension | Metrics | Weight |
|---------|--------|------:|
| **Quality** | ROE, ROCE, OPM | 35% |
| **Growth** | Sales Growth, Profit Growth, EPS | 25% |
| **Risk** | D/E, ICR | 20% |
| **Valuation** | PE, PEG, PFCF | 20% |

*Example* (illustrative):
- ROE: 15%
- ROCE: 10%
- OPM: 10%
- Sales Growth: 10%
- Profit Growth: 10%
- EPS: 5%
- D/E: 10%
- ICR: 10%
- PE: 7%
- PEG: 7%
- PFCF: 6%

*You can refine these based on research & backtesting.*

---

## **Computation Pipeline**

*Daily data ingestion**
* Scrape / fetch raw metrics → `fundamentals_snapshot`

*Normalization**
* Convert each metric to z-score or percentile
* Invert metrics where “lower is better” (e.g., D/E, PE, PEG, PFCF)

*Weighted sum**
* Apply defined weights → get `composite_score`

*Storage**
* Store z-scores & composite in `fundamentals_score`

---

## **Why z-score / percentile?**
* Align metrics on same scale → avoid ROE (40%) dominating PE (15)
* Makes cross-company & time-series comparison valid
* Retains direction: +ve good, -ve bad

---

## **Attribution Layer**
For every score change:
* Show: “Score ↓ 0.2 because ROE ↓ 2%, D/E ↑ 5%”
* Build trust & interpretability → critical for Anamika’s style

---

## **Future Ready**
Dynamic profiles: Value mode (weight PE higher), Growth mode (weight EPS & Sales Growth higher)  
User-tuned sliders (Anamika can tweak weights & see impact)

---

##  **Summary**
| Step | Why it matters |
|----|---------------|
| Clear metrics & rationale | Ties to real analyst questions |
| Weighting & normalization | Balanced, explainable scoring |
| Attribution | Builds user trust |
| Future profiles | Flexibility, personalization |

---

> *Crafted thoughtfully, this score becomes more than a number — it becomes Anamika’s daily compass.*

