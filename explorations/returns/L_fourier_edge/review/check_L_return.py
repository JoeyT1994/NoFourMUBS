# Independent check of return L's exact Dita triple: MUB triple, and which transitions have a singular 3x3 minor
import json, sys, itertools, numpy as np, sympy as sp
d = json.load(open(sys.argv[1]))
def num(M): return np.array([[complex(sp.N(sp.sympify(e), 30)) for e in row] for row in M])
H, K = num(d["H_Dita"]), num(d["K"])
L = H.conj().T @ K / np.sqrt(6)
for name, M in [("H", H), ("K", K), ("L", L)]:
    had = np.allclose(np.abs(M), 1, atol=1e-12) and np.allclose(M @ M.conj().T, 6*np.eye(6), atol=1e-10)
    minors = [abs(np.linalg.det(M[np.ix_(r, c)])) for r in itertools.combinations(range(6), 3) for c in itertools.combinations(range(6), 3)]
    print(f"{name}: Hadamard={had}  min |3x3 minor| = {min(minors):.3e}  #minors < 1e-9: {sum(m < 1e-9 for m in minors)}")
