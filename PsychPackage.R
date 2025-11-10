install.packages("psych")
library(psych)
data(bfi)

#Demo: Perform factor analysis to retrieve the latent table and individual personality trait 

# Include only the 25 personality items
bfi_items <- bfi[,1:25]

fa_result <- fa(bfi_items, nfactors = 5)   #set the factors to 5 (the Big Five Factors)

#retrieve the latent table
#rename factors to the correspondent factor
colnames(fa_result$loadings) <- c("Neuroticism", "Extraversion", "Conscientiousness", "Agreeableness", "Openness")
fa.diagram(fa_result)

#retrieve individual trait score 
colnames(fa_result$scores) <- c("Neuroticism", "Extraversion", "Conscientiousness", "Agreeableness", "Openness")
trait_scores <- fa_result$scores
trait_scores
