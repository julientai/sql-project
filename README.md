# sql-project
AIMS4715 project LMU

Intro:
This is a rudimentary webscraper I used on the Aviation Safety Network's Database of historical aircraft accidents 
grouped by airframe. The uploaded jtaibeau_data_collection.ipynb is the scraper I used specifically for the 
Lockheed C-130 Aiframe data hosted on the site. 

How I scraped other airframe data from the same site:
1. Download the each of the webpages as html files
2. Upload them into Jupyter Notebook
3. In the file = 'asn' + str(page) + '.html' statement, replace 'asn' in the for loop with whatever you downloaded the webpage
name as

Getting the info into a dataframe:
This was the difficult part. I was unable to figure out how to distinguish between each row of data as they all had
non-unique 'list' designations, among other issues. My workaround consisted of copying the html between <table></table>
and putting it into an html to csv converter found here: https://www.convertcsv.com/html-table-to-csv.htm
