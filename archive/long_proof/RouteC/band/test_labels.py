import numpy as np, time, sys
from numlib import boxes
from cert import label_stage
b = boxes()[int(sys.argv[1]) if len(sys.argv) > 1 else 0]
thc = b['c']; thr = b['r'] * (1 + 1e-12)
for w in [0.4, 0.2, 0.1, 0.05, 0.02]:
    for which in (0, 1):
        t = time.time(); c, r, br, nodes = label_stage(thc, thr, which, w)
        print('w=%.3f side=%s labels=%d (branch+ %d) nodes=%d  area=%.3f  %.1fs' % (w, 'BC'[which], len(c), (br > 0).sum(), nodes, (4 * r[:, 0] * r[:, 1]).sum(), time.time() - t), flush=True)
