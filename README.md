# 🎬 IMDB Movies SQL Analysis

## 📌 Project Overview

This project analyzes IMDB movie and director data using SQL.

The analysis focuses on movie popularity, revenue, ratings, directors, and other movie-related insights.

## 🗄️ Database

- Database: MySQL
- Database Name: project_movie_database
- Tables:
  - movies
  - directors

## 🎯 Project Objectives

- Explore movie and director data
- Count the number of movies
- Identify specific directors
- Find directors based on name patterns
- Analyze female directors
- Find popular movies
- Identify high-revenue movies
- Analyze movie ratings
- Connect movies with directors using JOINs
- Find the director with the most movies
- Identify the most bankable director

## 🛠️ SQL Concepts Used

- SELECT
- WHERE
- LIKE
- IN
- COUNT()
- SUM()
- ORDER BY
- LIMIT
- OFFSET
- GROUP BY
- INNER JOIN
- Aggregate Functions

## 📊 Key Analysis

### Most Bankable Director

James Cameron was identified as the most bankable director based on total movie revenue.

**Total Revenue:** 4,632,999,275

## 🔍 Important Finding

Brenda Chapman exists in the directors table, but her director ID (`4801`) is not referenced in the movies table. Therefore, the query for movies directed by Brenda Chapman returns zero rows.

## 📁 Project Files

├── README.md
|
├── IMDB Movies SQL Project.sql
|
├── IMDB Movies Document.docx
|
│── IMDB Movies Presentation.pptx

## 👩‍💻 Author

Rajeshwari
