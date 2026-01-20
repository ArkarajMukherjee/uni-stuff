#this samples X~Unif([6]) once, it doesnt put what it took, back however.
sample(1:6,1)
sample(1:6,6)
#its basically a permutation.
#if we want to sample multiple times with replacement then we set the replacement parameter to T(true)
sample(1:6,10,replace=T)
