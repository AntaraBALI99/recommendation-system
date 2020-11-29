## recommendation system ######
install.packages("recommenderlab")
library("recommenderlab")


View(book)
attach(book)
max(Book.Rating)
min(Book.Rating)
hist(book$Book.Rating)

## removing 1st col
book_data <- book[,-1]

### data type shuld be realratingmatrix
book_data_realRating <- as(book_data,'realRatingMatrix')
book_recomm_model1 <- Recommender(book_data_realRating, method="POPULAR")
#Predictions
recommended_items1 <- predict(book_recomm_model1,book_data_realRating[1],n=1)
as(recommended_items1, "list")


### methods
book_recomm_model2 <- Recommender(book_data_realRating, method="RANDOM")
book_recomm_model3 <- Recommender(book_data_realRating, method="UBCF")
book_recomm_model4 <- Recommender(book_data_realRating, method="IBCF")
