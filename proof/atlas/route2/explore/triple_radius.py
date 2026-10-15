"""Largest R at which the existing label-based Stage C triple test (ballrecord.stage_c(..., triple=True)) passes."""
import sys, random, time
from pathlib import Path
ATLAS = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ATLAS))
from export import load_certificate
from ballrecord import BallRecord
cert = load_certificate(str(ATLAS / 'results/atlas_certificate.json.gz'))
random.seed(int(sys.argv[1]))
for i in random.sample(range(len(cert.recs)), int(sys.argv[2])):
    rec = cert.recs[i]; B = BallRecord(rec['phi'].reshape(36), Tint=rec.get('Tint'))
    row = [i, round(B.sigma, 3)]
    for R in (0.08, 0.12, 0.16, 0.2):
        for lab in (0.03, 0.02, 0.015):
            t = time.time(); o = B.stage_c(R, radius=lab, triple=True)
            if o.get('ok'): row.append((R, lab, o.get('bins'), o.get('labels'), round(time.time() - t, 1))); break
        else:
            row.append((R, 'FAIL', o.get('reason'))); break
    print(row, flush=True)
