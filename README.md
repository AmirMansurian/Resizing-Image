# Image Resizing
##### Algorithm for resizing Image with Resizing factor 2

In image processing , image Resizing is one of the most important processing task.
Here we talk about a special type of resizing.We have some pictures and pictures with half of size the original pictures that its pixel has been deleted decussate and it needs to be resized with resize factor 2 and retrive deleted pixels to arrive the original picture.
There are famous algorithms to resizing pictures : Nearset neighbour, Bilinear and Biqubic.
Here i have proposed my own algorithm for resizing and i have compared the PSNR value of outcome image with original image with Biqubic algorithm.

We retrive pixels stpe by step : 
- pixels that row and coulmn numbers are odd. these pixels are exact copy of pixels of oroginal image so we just copy them in final image.
- after prevoius step from every 4 pixels of Image we have one of them so for pixels that have neighbours that have been calculated in step 1 we use Averge of its neighbour for its pixel value.
- at last for each 4 pixels of picture we just don not have one of them that we use Average of its four neighbour for its pixel value.

I use 3 images to compare my PSNR results with Biqubic algorithm .results of comparison are below:



|  |   My own resizing    |  Biqubic   | 
| ------  | ------ | ------ |
| Cameraman | 25/5362  | 23/7027  |
| Foreman |34/9120 | 32/4946 |
| House | 32/.683 | 29/2794 |




