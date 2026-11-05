Python 3.15.2 (tags/v3.15.2:5e58eaa, Oct 25 2026, 17:27:03) [MSC v.1951 64 bit (AMD64)] on win32
Enter "help" below or click "Help" above for more information.

==== RESTART: C:/Users/user/OneDrive/Dokumen/NumPy and Pandas _Assignment.py ===
--- PART 1: NUMPY ARRAY OPERATIONS ---
Week 1 Temperatures (Celsius): [22.5 25.3 20.8 23.4 26.1 24.8 21.9]
Shape: (7,)
Data Type: float64
Number of Elements: 7
Temperatures in Fahrenheit: [72.5  77.54 69.44 74.12 78.98 76.64 71.42]
Maximum Temperature: 26.1
Minimum Temperature: 20.8
Mean Temperature: 23.542857142857144
First three days: [22.5 25.3 20.8]
Weekend (last two days): [24.8 21.9]
Middle three days: [20.8 23.4 26.1]

2D Temperatures Array:
 [[22.5 25.3 20.8 23.4 26.1 24.8 21.9]
 [19.2 22.5 21.3 24.  23.5 22.8 28.1]]
2D Shape: (2, 7)
2D Data Type: float64
2D Total Elements: 14
Week 1 Temperatures: [22.5 25.3 20.8 23.4 26.1 24.8 21.9]
Week 2 Temperatures: [19.2 22.5 21.3 24.  23.5 22.8 28.1]
Weekends for both weeks:
 [[24.8 21.9]
 [22.8 28.1]]

--- PART 2: PANDAS SERIES ---
Marks Series:
 Rank1    95
Rank2    92
Rank3    89
Rank4    85
Rank5    80
dtype: int64
1st rank student mark (Integer index): 95
Top 3 ranks using loc:
 Rank1    95
Rank2    92
Rank3    89
dtype: int64
3rd rank student mark (iloc): 89
Ranks where marks > 90:
 Rank1    95
Rank2    92
dtype: int64
After updating 1st rank to 100:
 Rank1    100
Rank2     92
Rank3     89
Rank4     85
Rank5     80
dtype: int64
After removing last rank:
 Rank1    100
Rank2     92
Rank3     89
Rank4     85
dtype: int64
CGPA computed by dividing by 10:
 Rank1    10.0
Rank2     9.2
Rank3     8.9
Rank4     8.5
dtype: float64

--- PART 3: PANDAS DATAFRAME ---
DataFrame Head:
    TransactionID ProductCategory Region  Amount
0            101     Electronics  North     200
1            102        Clothing  South     150
2            103     Electronics  North     300
3            104       Furniture   East     450
4            105        Clothing   West     200
DataFrame Tail:
    TransactionID ProductCategory Region  Amount
5            106     Electronics  North     250
6            107       Furniture   East     300
7            108        Clothing   West     180
8            109       Furniture  South     350
9            110     Electronics  North     400
DataFrame Shape: (10, 4)
Column Names: ['TransactionID', 'ProductCategory', 'Region', 'Amount']
Data Types:
 TransactionID      int64
ProductCategory      str
Region               str
Amount             int64
dtype: object
ProductCategory and Amount columns:
   ProductCategory  Amount
0     Electronics     200
1        Clothing     150
2     Electronics     300
3       Furniture     450
4        Clothing     200
5     Electronics     250
6       Furniture     300
7        Clothing     180
8       Furniture     350
9     Electronics     400
Last 3 columns using iloc:
   ProductCategory Region  Amount
0     Electronics  North     200
1        Clothing  South     150
2     Electronics  North     300
3       Furniture   East     450
4        Clothing   West     200
5     Electronics  North     250
6       Furniture   East     300
7        Clothing   West     180
8       Furniture  South     350
9     Electronics  North     400
Filtered Rows (Region='North' and Amount > 200):
    TransactionID ProductCategory Region  Amount
2            103     Electronics  North     300
5            106     Electronics  North     250
9            110     Electronics  North     400
ProductCategory value counts:
 ProductCategory
Electronics    4
Clothing       3
Furniture      3
Name: count, dtype: int64
Unique values in Region column: <StringArray>
['North', 'South', 'East', 'West']
Length: 4, dtype: str
Mean amount grouped by Region:
 Region
East     375.0
North    287.5
South    250.0
West     190.0
Name: Amount, dtype: float64
After modifying Amount for TransactionID 102:
    TransactionID ProductCategory Region  Amount
0            101     Electronics  North     200
1            102        Clothing  South     165
2            103     Electronics  North     300
3            104       Furniture   East     450
4            105        Clothing   West     200
5            106     Electronics  North     250
6            107       Furniture   East     300
7            108        Clothing   West     180
8            109       Furniture  South     350
9            110     Electronics  North     400
After adding 'Discount' column:
    TransactionID ProductCategory Region  Amount  Discount
0            101     Electronics  North     200      20.0
1            102        Clothing  South     165      16.5
2            103     Electronics  North     300      30.0
3            104       Furniture   East     450      45.0
4            105        Clothing   West     200      20.0
5            106     Electronics  North     250      25.0
6            107       Furniture   East     300      30.0
7            108        Clothing   West     180      18.0
8            109       Furniture  South     350      35.0
9            110     Electronics  North     400      40.0
After removing row with TransactionID 109:
    TransactionID ProductCategory Region  Amount  Discount
0            101     Electronics  North     200      20.0
1            102        Clothing  South     165      16.5
2            103     Electronics  North     300      30.0
3            104       Furniture   East     450      45.0
4            105        Clothing   West     200      20.0
5            106     Electronics  North     250      25.0
6            107       Furniture   East     300      30.0
7            108        Clothing   West     180      18.0
9            110     Electronics  North     400      40.0
After deleting 'Discount' column:
    TransactionID ProductCategory Region  Amount
0            101     Electronics  North     200
1            102        Clothing  South     165
2            103     Electronics  North     300
3            104       Furniture   East     450
4            105        Clothing   West     200
5            106     Electronics  North     250
6            107       Furniture   East     300
7            108        Clothing   West     180
9            110     Electronics  North     400
