# IMDB-Movie-Rating
## 📌 Project Overview

This project analyzes the IMDB Top 250 Movies dataset using Microsoft SQL Server (MSSQL).
The dataset includes:

- Rank (1–250)
- Title
- Release Year
- Runtime (minutes)
- Rated (classification)
- Rating (IMDB score)

### Objective
To uncover insights into trends, patterns, and factors that influence movie success based on IMDB rankings.

## 🛠 Tools & Technologies

- Microsoft Excel (Data cleaning and preprocessing)
- SQL Server (MSSQL) (Data querying & analysis)

## ❓ Business Questions Explored

- What are the Top 10 highest-rated movies?
- Which movies have the longest runtimes?
- What is the average rating per decade?
- How do ratings differ by movie classification (Rated)?
- Do longer movies tend to have better ratings?
- How do the Top 50 movies compare to the Bottom 50?

## 📊 SQL Queries & Sample Insights
### Q1: Top 10 Highest-Rated Movies
 
<img width="389" height="224" alt="top 10" src="https://github.com/user-attachments/assets/8e059446-cb9f-45b8-828e-9ff021cdfd99" />

*Insight:*
- The Shawshank Redemption (1994) and The Godfather (1972) dominate the top spots with ratings above 9.0.
- Classic movies remain highly rated, showing enduring audience appreciation. 

### Q2: Longest 10 Movies by Runtime

<img width="384" height="218" alt="longest 10" src="https://github.com/user-attachments/assets/e2aa29fb-8cfd-4885-97aa-6807c1f638f2" />

*Insight:*
- Epics like Gone with the Wind and Lawrence of Arabia exceed 200 minutes.
- Longer runtimes are often linked to historical and dramatic storytelling.

### Q3: Average Rating Per Decade

<img width="261" height="240" alt="avg rating per decade" src="https://github.com/user-attachments/assets/2de0a352-e119-4f58-b36e-61e82e9a655f" />

*Insight:*
- The 1990s and 2000s produced the highest-rated movies on average.
- Modern decades (2010s–2020s) show fewer entries due to increased competition.

### Q4: Ratings by Movie Classification

<img width="250" height="177" alt="ratings by movie classification" src="https://github.com/user-attachments/assets/a58dcb24-4b8d-4862-888f-d12273c04c68" />

*Insight:*
- Most movies fall into the 100–150 min range.
- The 151–200 min category shows slightly higher average ratings.

### Q5: Do Longer Movies Get Better Ratings?

<img width="285" height="112" alt="do lnger movies get better  rating" src="https://github.com/user-attachments/assets/d51aa502-0abc-4013-9400-904031dfe459" />

*Insight:*
- Most movies fall into the 100–150 min range.
- The 151–200 min category shows slightly higher average ratings.

### Q6: Top 50 vs Bottom 50 Comparison

<img width="246" height="74" alt="top 50 vs bottom 50" src="https://github.com/user-attachments/assets/3345d923-0fc5-4456-a970-8e541c588663" />

*Insight:*
- The Top 50 average rating is 8.7+, while the Bottom 50 are around 8.0.
- Runtime differences are small, showing storytelling quality matters more than length.


## Data Cleaning & Preparation

Steps taken:
- Parsed date fields (Date received, Date resolved) to datetime format
- Cleaned missing values, especially in fields like Resolution time
- Normalized categorical entries (e.g., 'Yes'/'No')


