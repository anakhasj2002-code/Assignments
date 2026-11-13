Python 3.15.2 (tags/v3.15.2:5e58eaa, Oct 25 2026, 17:27:03) [MSC v.1951 64 bit (AMD64)] on win32
Enter "help" below or click "Help" above for more information.
# # Python DA Assignment 1: Data Analysis using NumPy and Pandas

# ## Part 1: NumPy Array Operations

# ### 1. Create a 1D NumPy Array - temperatures_w1

temperatures_w1 = np.array([22.5, 25.3, 20.8, 23.4, 26.1, 24.8, 21.9])
print(temperatures_w1)

# ### 2. Inspection and Properties

print('Shape:', temperatures_w1.shape)
print('Data type:', temperatures_w1.dtype)
print('Number of elements:', temperatures_w1.size)

# ### 3. Array Operations - Celsius to Fahrenheit + Max, Min, Mean

# Fahrenheit = (Celsius * 9/5) + 32
temperatures_f = (temperatures_w1 * 9/5) + 32
print('In Fahrenheit:', temperatures_f)
print('Maximum:', temperatures_w1.max())
print('Minimum:', temperatures_w1.min())
print('Mean:', temperatures_w1.mean())

# ### 4. Array Slicing and Indexing

print('First 3 days:', temperatures_w1[0:3])
print('Weekend (last 2 days):', temperatures_w1[-2:])
print('Middle 3 days:', temperatures_w1[2:5])

# ### 5. Create a 2D Array - temperatures (2 weeks)

temperatures = np.array([
    [22.5, 25.3, 20.8, 23.4, 26.1, 24.8, 21.9],  # Week 1
    [19.2, 22.5, 21.3, 24.0, 23.5, 22.8, 20.1]   # Week 2
])
print(temperatures)

# ### 6. Inspect and Slice the 2D Array

print('Shape:', temperatures.shape)
print('Data type:', temperatures.dtype)
print('Total elements:', temperatures.size)
print('Week 1:', temperatures[0])
print('Week 2:', temperatures[1])
print('Weekends both weeks:')
print(temperatures[:, -2:])

# ## Part 2: Pandas Series

# ### 1. Creating Pandas Series - marks

marks = pd.Series(
    [95, 92, 89, 85, 80],
    index=['Rank1', 'Rank2', 'Rank3', 'Rank4', 'Rank5']
)
print(marks)

# ### 2. Indexing and Slicing

print('1st rank (iloc[0]):', marks.iloc[0])
print('\nTop 3 ranks using loc:')
print(marks.loc[['Rank1', 'Rank2', 'Rank3']])
print('\n3rd rank using iloc:', marks.iloc[2])
print('\nMarks greater than 90 (boolean mask):')
print(marks[marks > 90])

# ### 3. Manipulating Series

# Modify 1st rank to 100
marks['Rank1'] = 100
print(marks)

# Remove last rank
marks = marks.drop('Rank5')
print('\nAfter removing Rank5:')
print(marks)

# CGPA = mark / 10
cgpa = marks / 10
print('\nCGPA:')
print(cgpa)

# ## Part 3: Pandas DataFrame

# ### 1. Creating Pandas DataFrame - transactions

transactions = pd.DataFrame({
    'TransactionID': [101, 102, 103, 104, 105, 106, 107, 108, 109, 110],
    'ProductCategory': ['Electronics', 'Clothing', 'Electronics', 'Furniture', 'Clothing', 'Electronics', 'Furniture', 'Clothing', 'Furniture', 'Electronics'],
    'Region': ['North', 'South', 'North', 'East', 'West', 'North', 'East', 'West', 'South', 'North'],
    'Amount': [200, 150, 300, 450, 200, 250, 300, 180, 350, 400]
})
print(transactions)

# ### 2. Data Exploration

print(transactions.head())
print(transactions.tail())
print('Shape:', transactions.shape)
... print('Columns:', transactions.columns.tolist())
... print(transactions.dtypes)
... print(transactions.info())
... print('\nOnly ProductCategory and Amount:')
... print(transactions[['ProductCategory', 'Amount']])
... print('\nLast 3 columns using iloc:')
... print(transactions.iloc[:, -3:])
... print('\nRegion North and Amount > 200:')
... print(transactions[(transactions['Region'] == 'North') & (transactions['Amount'] > 200)])
... print('\nValue counts - ProductCategory:')
... print(transactions['ProductCategory'].value_counts())
... print('\nUnique values - Region:')
... print(transactions['Region'].unique())
... print('\nGroup by Region - Mean Amount:')
... print(transactions.groupby('Region')['Amount'].mean())
... 
... # ### 3. Manipulating the DataFrame
... 
... # Modify Amount for TransactionID 102 to 165
... transactions.loc[transactions['TransactionID'] == 102, 'Amount'] = 165
... 
... # Add Discount column - 10% of Amount
... transactions['Discount'] = transactions['Amount'] * 0.10
... print('After adding Discount:')
... print(transactions)
... 
... # Remove row with TransactionID 109
... transactions = transactions[transactions['TransactionID'] != 109]
... 
... # Delete Discount column
... transactions = transactions.drop(columns=['Discount'])
... print('\nFinal DataFrame:')
... print(transactions)
... 
... # ## Conclusion / Observation
... # - Week 1 average temp (23.54) is higher than Week 2.
... # - Highest temp in Week 1 is 26.1, lowest is 20.8.
... # - Electronics has highest transactions (4).
