"""For the roots that fail the sampled Krawczyk test on a whole region, how small must sub-balls be?
Usage: explore_subdiv.py rho deg cdeg id   (exploration)"""
import sys, math, numpy as np
import phase1 as P1
from systems import track, newton
rho = float(sys.argv[1]); P1.DEG = int(sys.argv[2]); P1.CDEG = int(sys.argv[3]); i = int(sys.argv[4]); P1.N3C = float(sys.argv[6]) if len(sys.argv) > 6 else P1.N3C
res = P1.analyse(i, rho, 40, keep=True); st = res.pop('_state')
print({k: res[k] for k in ('rec', 'rho', 'kraw_fail', 'fail_why', 'secs')}, flush=True)
rng = np.random.default_rng(7); Hp = st['Hpure']
fail = [a for a, k in enumerate(st['kraw']) if not k['ok']]
need = []
for a in fail[:int(sys.argv[5]) if len(sys.argv) > 5 else 30]:
    ch0 = P1.LOG; u0 = st['U0'][a]; ch = st['charts'][a]
    got = None
    for k in (2, 4, 8, 16):
        rs = rho / k; passes = 0; trials = 4
        for _ in range(trials):
            c = rng.normal(size=4); c *= rho * rng.uniform() ** 0.25 / np.linalg.norm(c)
            Es = [c] + [c + rs * x / np.linalg.norm(x) * (1 if j % 2 == 0 else rng.uniform() ** 0.25) for j, x in enumerate(rng.normal(size=(40, 4)))]
            Vs = []; Eok = []
            for e in Es:
                c2, v, ok = track(ch0, Hp, u0, e)
                if not ok: continue
                if c2.key != ch.key:
                    z = c2.to_z(v); v = ch.from_z(z)
                Vs.append(v); Eok.append(e)
            if len(Vs) < 36: continue
            Vs = np.array(Vs); Eok = np.array(Eok)
            lp = np.ones(5, bool) if ch.kind == 'log' else np.r_[False, np.ones(4, bool)]
            ref = Vs[0]; Vs = np.where(lp, Vs.real + 1j * (ref.imag + np.angle(np.exp(1j * (Vs.imag - ref.imag)))), Vs)
            cm = P1.fit(Eok - c, Vs)
            kr = P1.kraw_root(ch, lambda e, c=c: Hp(e + c), Eok - c, cm, rng, P1.N3C * rho ** 3)
            passes += kr['ok']
        if passes == trials: got = k; break
    sp = np.ptp(np.concatenate([[0.0], u0.real]))
    print(f'  root {a} chart {ch.key} spread0 {sp:.2f}: whole-region {st["kraw"][a]["why"]}; sub-ball radius rho/{got} passes', flush=True)
    need.append(got)
nb = lambda k: math.ceil((math.pi ** 2 / 2) * (1 + k) ** 4) if k else None
print('needed k:', need)
