
import sys
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

print(str(sys.argv[1]))

dataset = pd.read_csv('../', str(sys.argv[1]))

# print(dataset)

empid=dataset.iloc[:,0:1].values
empname=dataset.iloc[:,1:2].values
# print(empid)

x=dataset.iloc[:,13:14].values
y=dataset.iloc[:,18:19].values

id=dataset.iloc[:,:1].values
name=dataset.iloc[:,1:2].values

# print(x)
# print(y)

# Training-spliting dataset 
from sklearn.model_selection import train_test_split
x_train,x_test,y_train,y_test=train_test_split(x,y,test_size=0.2,random_state=0)

# Linear Regression
from sklearn.linear_model import LinearRegression
regressor=LinearRegression()
regressor.fit(x_train,y_train)
y_pred=regressor.predict(x_test)
# print(y_pred)

# Polynomial Regression
from sklearn.preprocessing import PolynomialFeatures
poly=PolynomialFeatures(degree=2)
x_poly=poly.fit_transform(x)
regressor.fit(x_poly,y)
y_pred=regressor.predict(poly.fit_transform(x))

#print(y_pred)
 
#print(y)

result=np.hstack((y, y_pred))
result=np.hstack((empname,result))
result=np.hstack((empid,result))

print(result)