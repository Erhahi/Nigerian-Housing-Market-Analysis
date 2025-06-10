# Nigerian Housing Market Analysis (Beyond the Obvious)

A deep-dive into housing listings across Nigeria, this project uncovers surprising and thought-provoking insights beyond the usual “Lagos is expensive” narrative. With over **24,000 property records**, we ask new questions about pricing, features, and geographic quirks that could impact buyers, sellers, investors, and curious data enthusiasts.

---

## Table of Contents
- [Project Summary](#-project-summary)
- [Key Questions Answered](#-key-questions-answered)
- [Dataset Overview](#-dataset-overview)
- [Tools Used](#️-tools-used)
- [Key Insights](#-key-insights)
- [File Structure](#-file-structure)
- [Visual Samples](#-visual-samples)
- [How to Reproduce](#-how-to-reproduce)
- [Connect With Me](#-connect-with-me)

---

##  Project Summary

This project analyzes housing listings from Nigeria with the goal of uncovering **hidden truths** and **counterintuitive findings**. Instead of focusing on average prices by state, it asks:

> - Are "luxury" homes truly expensive?
> - Is there a tipping point where adding features *lowers* value?
> - What micro-locations in rich states offer surprisingly affordable housing?

Using SQL (MySQL Workbench) for analysis and Excel for visualization, this project is a blend of technical querying and compelling storytelling.

---

## Key Questions Answered

- Do “Luxury” homes really cost more everywhere?
- What’s the hidden cost of an extra bathroom or toilet in Lagos vs. Kaduna?
- Can parking be a bigger status symbol than house size?
- Which towns are *underpriced* in *overpriced* states?
- Is there a point where more toilets = *less* value?

---

## Dataset Overview

| Feature         | Description                                |
|-----------------|--------------------------------------------|
| `bedrooms`      | Number of bedrooms in the house            |
| `bathrooms`     | Number of bathrooms                        |
| `toilets`       | Number of toilets                          |
| `parking_space` | Number of parking spaces                   |
| `title`         | Listing title or house type (e.g., Duplex) |
| `town`          | Town in which the house is located         |
| `state`         | State in Nigeria where the house is listed |
| `price`         | Target column (price in Naira)             |

- **Rows:** 24,326
- **Columns:** 8

---

## Tools Used

- **MySQL Workbench** — SQL queries and filtering
- **Microsoft Excel** — For aggregations and charting
- **GitHub** — Project sharing and version control

---

## Key Insights

Here are a few highlights from the findings:

- - **Luxury Mismatch:** In premium towns like Ikoyi and Victoria Island, some luxury house types like Duplexes are **cheaper** than "regular" homes like Block of Flats. In Ikoyi, Block 
                         of Flats average ₦1.38B — far above some Duplexes in the same area. Labels don’t always match value.
- - **Bathroom Trap:** In some states, more bathrooms can actually reduce a house's value. In Abuja, homes with 3 bathrooms are priced 47% lower than those with just 2. Only Lagos shows 
                       a consistent premium, where adding a bathroom more than doubles the price — highlighting regional buyer behavior differences.

- - **Toilet Spike, Then Crash:** As the number of toilets increases, house prices rise — until they **explode at 8 toilets**, where average prices skyrocket to over ₦5 billion. But at 
                                  9 toilets, values crash by 90%. This suggests 8-toilet listings may be elite properties (like mansions or mini-hotels), but beyond that, the market 
                                  sees excess as a **red flag**, not a premium.
 
- **State Outliers:** In Lagos and Abuja, where state average prices exceed ₦300M, towns like Ikorodu (₦24.3M) and Kuje (₦12.6M) offer homes at over ₦300M below the state average, 
                      making them standout affordable alternatives in Nigeria’s priciest states. These outliers present unique opportunities for first-time buyers or cost-sensitive  
                      investors looking to enter high-demand markets at a discount.

---

## File Structure
```text
 nigerian-housing-analysis/
│
├── README.md # This file
├── housing_analysis.sql # All SQL queries used in analysis
│
├── img/ # Screenshots of query results
│ ├── step1_preview.png
│ ├── step3_luxury_mismatch.png
│ └── step4_Bathroom_premium_per_state.png
│ └── step5_Toilet_Vs_price.png
│ └── step6_Outlier_towns_in_expensive_states.png
│
├── charts/ # Visualizations from Excel
  └── bathroom_vs_price.png




