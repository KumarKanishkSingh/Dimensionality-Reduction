# Dimensionality-Reduction

## Introduction: 

 

Data keeps on increasing every second and it has become crucial to interpreting insights from this data to solve problems. And, as features of data increases so dimensions of the dataset increase. The problem with high dimensional data is that it means high computational cost to perform learning and it often leads to over-fitting when learning a model. Due to this reason, we have dimensionality reduction. Dimensionality reduction is the transformation of data from a high-dimensional space into a low-dimensional space so that the low-dimensional representation retains some meaningful properties of the original data. It helps in data compression, reduces computation time and helps remove redundant features, if any. 

In this project, we shall be comparing two methods of dimensionality reduction using principal component analysis (PCA) and auto encoders by applying them over a variety of datasets.  

 

 

## Principle Component Analysis (PCA): 

Principal Component Analysis is an unsupervised learning algorithm that is used for the dimensionality reduction in machine learning. It is a statistical process that converts the observations of correlated features into a set of linearly uncorrelated features with the help of orthogonal transformation.  

These new transformed features are called the Principal Components. It is one of the popular tools that is used for exploratory data analysis and predictive modelling. It is a technique to draw strong patterns from the given dataset by reducing the variances. 

 
 

 

 

<!-- Data Visualization: 

 

Data visualization can give good intuition to how your data “looks” and what are the directions you’ll need to consider when building the right model. We will PCA to visualize our data and be get hints on the underline distribution and separability of our data. 

 

Here we shall be using the Pizza Dataset available on Kaggle. Here is some information about our dataset: 

 

 

 

In our dataset there are 10 different types of pizzas and their features like moisture, fat, protein, etc. 

 

 

 

 

 

As we can see, there are 9 different features in our dataset and therefore the data is 9 dimensional. We will now reduce the dimensions of our data to 3, which is much easier to visualize.  

 

For the dimensionality reduction we use PCA. We take the number of components to be 3 as the target dimensionality is 3. After training our data we plot it as follows: 

 

   

 

As we can see from the above plot, our data has been visualized in the form of scatterplot for different types of pizzas. We can see that pizza of type A, B, I and J are separated from other types of pizzas which are clustered. So, we can say that pizzas of t type A, B, I and J are easily distinguishable from other types. 

 

We have seen how helpful PCA can be in visualizing data and gaining deep insights from it. Now let’s have a look at its other applications. 

 

 

  -->

## Image Compression: 

Notebook Link: https://www.kaggle.com/kumarkanishksingh/image-compression/edit

Images have a huge number of features and take up a lot of disk space. A solution to this problem is compressing them. To do this, we reduce the dimensionality using PCA. 

The dataset we are going to use is the “flower-color-images" dataset available on Kaggle. 

Our data set contains 813 images of various flowers in color. 

We first read the image and resize the image using OpenCV. Then we separate the Red, Green and Blue channels of the image and flatten them. 

Then we apply PCA on RGB channels separately and then rejoin the channels to get the compressed image.

We can observe from the results that as we increase the number of principal components, the quality of the compressed image increases. This is because more information is retained at higher principal components. 


Another way to compress images by reducing dimensionality is by using autoencoders.

We first resize images to shape 100x100 pixels. Then we flatten the images.

Now we create our model which has 7 layers. The first and last layers have 30000 neurons (the size of each image is 100x100x3). The second and sixthth layers have 10000 neurons. The third and fifth layers have 1200 neurons. The fourth layer, which is also the middle layer has 200 neurons. We keep the input and target data to be same. The first half of the model encodes and compresses the image and the second half decodes the image.

We observe that our compressed image which, when decoded, are a bit blurry. The images aren't noisy as we got in PCA.

We can use the same model to denoise an image. We put noisy images in input and their clear counterparts as targets. This generates clear images.