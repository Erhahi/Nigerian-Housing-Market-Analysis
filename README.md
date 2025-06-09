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

- **Luxury Mismatch:** In Ajah and Enugu, houses labeled "Luxury" or "Mansion" are cheaper than regular flats in nearby towns.
- **Bathroom Premium:** A bathroom in Lagos is worth 8x what it's worth in Jos, showing massive geographic pricing bias.
- **Toilet Tipping Point:** Houses with more than 5 toilets often *decrease* in value — an unexpected inverse relationship.
- **Parking Privilege:** In Ikeja, one extra parking space adds over ₦5 million to property value — more than a room upgrade.
- **State Outliers:** Towns like Ifo (Ogun) or Akure (Ondo) offer surprisingly cheap homes in expensive states, great for investors.

---

## File Structure
---
 nigerian-housing-analysis
│
├── README.md # This file
├── housing_analysis.sql # All SQL queries used in analysis
│
├── img/ # Screenshots of query results
│ ├── step1_preview.png
│ ├── step3_luxury_mismatch.png
│ └── Bathroom premium per state
│ └── Toilet Vs price 
│ └── Outlier towns in expensive states
│
├── charts/ # Visualizations from Excel
│ ├── bathroom_vs_price.png

---



