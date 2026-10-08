"""Numerical check of the branch lemma used by Certification/fasthplus.jl.

In model.py's side constructor, the side square root delta (sign chosen so that dF >= 0) and the
cube root w of xi are choices.  Claim: on the h side, flipping delta or changing w multiplies H by
a monomial acting on columns 3-5 (H -> H Q); on the v side, by a monomial acting on rows 3-5
(H -> P H).  Common-ray overlap moduli and the corner-R multiset are invariant under both, so a
branch continued analytically across a seed cell represents H_+ throughout the cell.
Status: numerical regression only. The algebraic proof and exact verifier are in
ProvenResults/Sheets/BRANCH_LEMMA.md and verify_branch_lemma.py. The reversed delta chart
is undefined at s=0; the proof covers regular charts, including every dF=0 point."""
import sys, numpy as np, mpmath as mp
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'MinimalConstruction' / 'Implementation'))
import model as M
mp.mp.dps = 30
src = (Path(M.__file__)).read_text(); i = src.index('def side('); j = src.index('class Model')
exec(src[i:j].replace("if mp.re(dF)<0:delta=-delta;dF=-dF", "if mp.re(dF)>0:delta=-delta;dF=-dF").replace("def side(", "def side_flip("), M.__dict__)
def monomial_relation(A, B):      # B = A Q with Q monomial  <=>  |A^dag B| is 6 x (permutation)
    O = np.abs(A.conj().T @ B)
    return np.allclose(np.sort(O, 0)[-1], 6, atol=1e-8) and np.allclose(np.sort(O, 0)[:-1], 0, atol=1e-8)
def fixes_first3(A, B, cols=True):   # the monomial fixes indices 0-2
    return np.allclose(A[:, :3], B[:, :3]) if cols else np.allclose(A[:3, :], B[:3, :])
rng = np.random.default_rng(int(sys.argv[1]) if len(sys.argv) > 1 else 0)
N = int(sys.argv[2]) if len(sys.argv) > 2 else 40
ok = True; done = 0
while done < N:
    th = rng.uniform(-np.pi, np.pi, 4); seeds = [mp.exp(1j*mp.mpf(float(x))) for x in th]
    try: m = M.Model(seeds)
    except ValueError: continue
    H = np.array(m.hadamard().tolist(), dtype=complex)
    Gh = m.Gh; X = abs(Gh[1,0])**2; Y = abs(Gh[2,0])**2; Z = abs(Gh[2,1])**2
    p = X+Y+Z; J = 2*mp.re(Gh[1,0]*Gh[2,1]*mp.conj(Gh[2,0])); W = X*Y+X*Z+Y*Z-X*Y*Z
    chi = W-(p-9)*(p-18)+(p-15)*J; zp = (chi + mp.j*mp.sqrt(m.R))/(2*m.g)
    variants = []
    mm = M.Model(seeds); mm.h = M.side_flip(mm.Gh, zp, mm.g); variants.append(('h', np.array(mm.hadamard().tolist(), dtype=complex)))
    mm = M.Model(seeds); mm.v = M.side_flip(mm.T.T, mp.conj(zp), mm.g); variants.append(('v', np.array(mm.hadamard().tolist(), dtype=complex)))
    for b in (1, 2):
        variants.append(('h', np.array(m.hadamard(b, 0).tolist(), dtype=complex)))
        variants.append(('v', np.array(m.hadamard(0, b).tolist(), dtype=complex)))
    for side, H2 in variants:
        good = monomial_relation(H, H2) and fixes_first3(H, H2, True) if side == 'h' else monomial_relation(H.T, H2.T) and fixes_first3(H, H2, False)
        good &= np.abs(H2 @ H2.conj().T - 6*np.eye(6)).max() < 1e-12
        ok &= good
    done += 1
print(f"{N} strict seeds x 6 branch changes: {'PASS' if ok else 'FAIL'}")
assert ok
