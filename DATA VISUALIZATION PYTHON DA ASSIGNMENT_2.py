Python 3.15.2 (tags/v3.15.2:5e58eaa, Oct 25 2026, 17:27:03) [MSC v.1951 64 bit (AMD64)] on win32
Enter "help" below or click "Help" above for more information.

= RESTART: C:/Users/user/OneDrive/Dokumen/DATA VISUALIZATION PYTHON DA ASSIGNMENT_2.py
Dataset Loaded Successfully! First 5 rows:
               pickup             dropoff  ... pickup_borough dropoff_borough
0 2019-03-23 20:21:09 2019-03-23 20:27:24  ...      Manhattan       Manhattan
1 2019-03-04 16:11:55 2019-03-04 16:19:00  ...      Manhattan       Manhattan
2 2019-03-27 17:53:01 2019-03-27 18:00:25  ...      Manhattan       Manhattan
3 2019-03-10 01:23:59 2019-03-10 01:49:51  ...      Manhattan       Manhattan
4 2019-03-30 13:27:42 2019-03-30 13:37:14  ...      Manhattan       Manhattan

[5 rows x 14 columns]

Missing values before handling:
pickup              0
dropoff             0
passengers          0
distance            0
fare                0
tip                 0
tolls               0
total               0
color               0
payment            44
pickup_zone        26
dropoff_zone       45
pickup_borough     26
dropoff_borough    45
dtype: int64

Warning (from warnings module):
  File "C:/Users/user/OneDrive/Dokumen/DATA VISUALIZATION PYTHON DA ASSIGNMENT_2.py", line 24
    for col in df.select_dtypes(include=["object", "category"]).columns:
Pandas4Warning: For backward compatibility, 'str' dtypes are included by select_dtypes when 'object' dtype is specified. This behavior is deprecated and will be removed in a future version. Explicitly pass 'str' to `include` to select them, or to `exclude` to remove them and silence this warning.
See https://pandas.pydata.org/docs/dev/user_guide/migration.html#string-migration-select-dtypes for details on how to write code that works with pandas 2 and 3.
Missing values after handling:
pickup             0
dropoff            0
passengers         0
distance           0
fare               0
tip                0
tolls              0
total              0
color              0
payment            0
pickup_zone        0
dropoff_zone       0
pickup_borough     0
dropoff_borough    0
dtype: int64

Warning (from warnings module):
  File "C:/Users/user/OneDrive/Dokumen/DATA VISUALIZATION PYTHON DA ASSIGNMENT_2.py", line 93
    sns.boxplot(x="pickup_borough", y="tip", data=df, palette="Set2")
FutureWarning: 

Passing `palette` without assigning `hue` is deprecated and will be removed in v0.14.0. Assign the `x` variable to `hue` and set `legend=False` for the same effect.


Warning (from warnings module):
  File "C:/Users/user/OneDrive/Dokumen/DATA VISUALIZATION PYTHON DA ASSIGNMENT_2.py", line 107
    sns.countplot(x="pickup_borough", data=df, palette="viridis")
FutureWarning: 

Passing `palette` without assigning `hue` is deprecated and will be removed in v0.14.0. Assign the `x` variable to `hue` and set `legend=False` for the same effect.


Warning (from warnings module):
  File "C:/Users/user/OneDrive/Dokumen/DATA VISUALIZATION PYTHON DA ASSIGNMENT_2.py", line 149
    sns.violinplot(x="payment", y="fare", data=df, palette="muted")
FutureWarning: 

Passing `palette` without assigning `hue` is deprecated and will be removed in v0.14.0. Assign the `x` variable to `hue` and set `legend=False` for the same effect.

