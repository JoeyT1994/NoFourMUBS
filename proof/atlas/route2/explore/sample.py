import sys, numpy as np
from unbiased import hadamard, solve
from defect import triple_defect
for seed in range(int(sys.argv[1]), int(sys.argv[2])):
    H, th = hadamard(seed)
    sols = solve(H.conj().T, starts=2500, seed=seed)
    X = np.array([np.exp(1j*np.concatenate([[0.0], s])) for s in sols])
    print(seed, len(X), round(triple_defect(X), 5), flush=True)
