# Databases Course - Assignment 2 <!-- omit in toc -->

This repo contains a SQL query for auto-populating the database, copy the content of `db_create.sql` to the Query Tool and run it to create tables and insert data automatically

# Table of contents <!-- omit in toc -->

- [Generate database](#generate-database)
- [Assignment instructions](#assignment-instructions)
- [Delivery](#delivery)
- [Schema](#schema)
- [Queries](#queries)

## Generate database

This repo contains a SQL query for auto-populating the database. To do it, create a database, then copy the content of `db_create.sql` to the Query Tool and run it to create tables and insert data automatically

## Assignment instructions
-   The assignment must be done individually.
-   Implement each query in its own plain text file, the file name must be query_<number>.sql . Example: query_8.sql  .
-   Each query will be evaluated by an automatic script that will compare its results with the ones from the reference implementation. Each query will then be either correct (+1 point) or wrong (+0 points). Misspelled file names or wrong file encodings count as wrong implementations (+0 points).
-   The attributes in the results must be ordered as they appear in the text. Example: “return the beer name and its manufacturer” should be matched with a “SELECT name, manf FROM ...” Failure to properly order the columns leads to (+0 points).
-   When asked to return information about a relation, select the attributes that identifies it, i.e. the primary key. Example: Select all the Beers that, “SELECT name FROM Beers”.
-   Non integer numbers must be rounded at the second decimal. Example 0.1234 → 0.12.
-   Do not create additional tables or persistent views.
-   Do not modify in anyway the existing schema/data.
-   The queries will be tested against a PostgreSQL database instance, you can either install your own or use one of these provided. See post: [https://classroom.google.com/u/1/c/MzcyNzQzMTc4MzRa/p/NDM2MjM1MTczMzha/details](https://classroom.google.com/u/1/c/MzcyNzQzMTc4MzRa/p/NDM2MjM1MTczMzha/details)
-   Table names are capitalized like shown below. Remember “ in your queries.

## Delivery
-   Create a .zip archive with, and only with, the 10 .sql files and upload it via Google Classroom.
-   The name of the archive must be SQL_<mat>.zip, where mat is yout matricole. Example: SQL_12345.zip ; example command: zip SQL_12345.zip *.sql.
-   The archive must not contain anything else (no subfolders, no files). Extraction and evaluation is completely automated. Malformed archives, misspelled names, and double submissions will result in a total evaluation of 0 points.

## Schema

    Beers(name, manf)
    Bars(name, addr, license)
    Drinkers (name, addr, phone)
    Likes(drinker, beer)
	    FK (drinker) REFERENCES Drinkers
	    FK (beer) REFERENCES Beers
    Sells(bar, beer, price)
	    FK (bar) REFERENCES Bars
		FK (beer) REFERENCES Beers
	Frequents(drinker, bar)
		FK (drinker) REFERENCES Drinkers
		FK (bar) REFERENCES Bars

## Queries
1.  What beers are made by Anheuser-Busch?
2.  Find the bars that serve Miller and Bud at the same price.
3.  Find the name and manufacturer of each beer that Fred likes.
4.  Find those beers that are the unique beer by their manufacturer.
5.  Find the beer(s) sold for the highest price.
6.  Find the drinkers and beers such that:
	- the drinker likes the beer, and
	- the drinker frequents at least one bar that sells that beer.
7.  Find all the different prices charged for beers (no duplicates).  
8.  List the bars that serve a beer that Joe likes.
9.  List the drinkers that frequent at least one bar that serves a beer they like.
10.  List the drinkers that frequent only bars that serve some beer that they like. (Assume each drinker likes at least one beer and frequents at least one bar.)