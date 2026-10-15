"""Cache the Record centres (phi radians 36, R, Tint) of the certified atlas as an .npz (fast to load)."""
import gzip, json, sys
from pathlib import Path
import numpy as np
ATLAS = Path(__file__).resolve().parents[2]
CACHE = Path(__file__).resolve().parent / 'centres.npz'

def build():
    d = json.load(gzip.open(ATLAS / 'results/atlas_certificate.json.gz', 'rt'))
    recs = d['records']
    phi = np.array([[float.fromhex(x) for x in r['phi']] for r in recs])
    R = np.array([r['R'] for r in recs])
    Tint = np.array([r['Tint'] if r.get('Tint') else [0] * 144 for r in recs], dtype=np.int64).reshape(-1, 36, 4)
    ntg = np.array([len(r['targets']) for r in recs])
    np.savez_compressed(CACHE, phi=phi, R=R, Tint=Tint, ntg=ntg)

def load():
    if not CACHE.exists(): build()
    z = np.load(CACHE); return z['phi'], z['R'], z['Tint']

if __name__ == '__main__':
    build(); phi, R, T = load(); print(phi.shape, np.unique(R, return_counts=True))
