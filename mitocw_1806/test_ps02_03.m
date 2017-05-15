K = toeplitz([2 -1 0 0 0 0])
[L,U] = lu(K)
inv(L)

7*inv(K)