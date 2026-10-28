"""Multi-node shell certification of the X-ball: exact level-L partition, sharded runs, one exact accounting.

  plan    --cover C --receipts R --core K --core-power P --level L --out PLAN.json [--prior ROWS.jsonl ...]
  run     --plan PLAN.json --shard i --shards N --workers W --out ROWS_i.jsonl
  account --plan PLAN.json --core K --core-power P --rows ROWS... --out RESULT.json

`plan` starts from the screened cover and its receipts (as campaign.py does), extends the certified core to
r/2**P (campaign.extend_core), keeps every shell leaf already closed by a receipt, and replaces every other shell leaf
by all its dyadic descendants at level L (each split is the exact 16-child partition of geometry.children; a
descendant is OUTSIDE when its lower radial bound exceeds the ball, CORE when it lies inside the certified core,
SHELL otherwise).  With --prior, rows from an earlier round are reused for leaves of the new plan: a closed row keeps
its leaf, a failed one is split again.  geometry.verify_cover checks the result is an exact partition of [-1, 1]^4.

`run` certifies the shard's pending SHELL leaves with run_shells.run_piece, unchanged (fresh local model, the whole-ball
certifier and symmetry forcing; binding checked before and after each piece).  Rows are appended and fsynced; a
restarted shard skips leaves it already has.

`account` checks the core exactly as campaign.py does (campaign.verified_core) and passes the plan's cover and all rows
to run_shells.account, which demands one receipt per SHELL leaf with matching domain and binding.  The X-ball is
CERTIFIED only if every SHELL leaf is closed.
"""
import argparse, json, os, sys, time
from concurrent.futures import ProcessPoolExecutor, as_completed
from fractions import Fraction
from pathlib import Path

HERE = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(HERE)); sys.path.insert(0, str(HERE / 'experiments'))
import geometry


def kind_of(cell, power):
    lower, upper = geometry.radial_squares(cell)
    return 'OUTSIDE' if lower > 1 else 'CORE' if upper <= Fraction(1, 4**power) else 'SHELL'


def read_rows(paths):
    rows = {}
    for p in paths:
        for line in open(p):
            try:
                r = json.loads(line)
            except ValueError:
                continue                      # an interrupted final line
            if 'row' in r and 'id' not in r:   # a campaign journal event wraps its row
                r = r['row']
            if 'id' not in r or 'status' not in r:
                continue
            if r.get('status') in ('CERTIFIED', 'CERTIFIED EMPTY') or r['id'] not in rows:
                rows[r['id']] = r
    return rows


def plan(a):
    import campaign as CP, run_xball as RX
    base = RX.binding()['id']
    CP.CORE_POWER[0] = a.core_power
    CP.verified_core(a.core, base, a.core_power)
    cover = CP.extend_core(json.loads(a.cover.read_text()), a.core_power)
    rows = read_rows([a.receipts] + list(a.prior or []))
    closed = {k for k, r in rows.items() if r['status'] in ('CERTIFIED', 'CERTIFIED EMPTY')}
    leaves = []

    def resolve(lf):
        """Keep a closed leaf; keep an open leaf at the plan level; split any other open shell leaf."""
        r = rows.get(lf['id'])
        if lf['kind'] != 'SHELL' or (r is not None and r['cell'] == lf['cell'] and lf['id'] in closed) \
                or lf['cell'][0] >= a.level:
            leaves.append(lf); return
        for c in geometry.children(lf['cell']):
            resolve(dict(id=geometry.identifier(c), cell=list(c), kind=kind_of(c, a.core_power)))

    for leaf in cover['leaves']:
        resolve(leaf)
    result = dict(cover, core_power=a.core_power, core_radius_ratio=[1, 2**a.core_power], leaves=leaves,
                  plan_level=a.level, base_binding=base)
    result['verification'] = geometry.verify_cover(result)
    pending = [lf['id'] for lf in leaves if lf['kind'] == 'SHELL' and lf['id'] not in closed]
    result['pending'] = pending
    a.out.write_text(json.dumps(result))
    print(json.dumps(dict(leaves=len(leaves), shell=sum(lf['kind'] == 'SHELL' for lf in leaves),
                          pending=len(pending), counts=result['verification'].get('counts'))))


def run(a):
    import run_shells as RS, run_xball as RX
    p = json.loads(a.plan.read_text())
    base = RX.binding()['id']
    if base != p['base_binding']: raise SystemExit('binding differs from the plan')
    leaves = {lf['id']: lf for lf in p['leaves']}
    mine = [k for i, k in enumerate(p['pending']) if i % a.shards == a.shard]
    done = set(read_rows([a.out])) if a.out.exists() else set()
    todo = [k for k in mine if k not in done]
    print(json.dumps(dict(shard=a.shard, mine=len(mine), todo=len(todo))), flush=True)
    ctx = __import__('multiprocessing').get_context('fork')
    with open(a.out, 'a') as f, ProcessPoolExecutor(a.workers, mp_context=ctx) as pool:
        futs = {pool.submit(RS.run_piece, leaves[k], base): k for k in todo}
        for fu in as_completed(futs):
            row = fu.result()
            f.write(json.dumps(row, allow_nan=False) + '\n'); f.flush(); os.fsync(f.fileno())


def account(a):
    import campaign as CP, run_shells as RS, run_xball as RX
    base = RX.binding()['id']
    CP.CORE_POWER[0] = a.core_power
    core = CP.verified_core(a.core, base, a.core_power)
    p = json.loads(a.plan.read_text())
    shell = {lf['id']: lf for lf in p['leaves'] if lf['kind'] == 'SHELL'}
    rows = [r for k, r in read_rows(a.rows).items() if k in shell]
    cover = {k: v for k, v in p.items() if k not in ('pending',)}
    result = RS.account(cover, rows, base, core)
    result.update(plan_level=p['plan_level'], core_power=a.core_power,
                  core_extension='radius-1/50 crossing theorem (v4)' if 'v4' in str(a.core) else 'v3')
    a.out.write_text(json.dumps(result, indent=1))
    print(json.dumps({k: (v if not isinstance(v, list) else len(v)) for k, v in result.items()
                      if k in ('status', 'core_status', 'shell_required', 'shell_tested', 'shell_closed',
                               'shell_unresolved', 'shell_untested')}))


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    sub = ap.add_subparsers(dest='cmd', required=True)
    q = sub.add_parser('plan'); q.add_argument('--cover', type=Path, required=True)
    q.add_argument('--receipts', type=Path, required=True); q.add_argument('--core', type=Path, required=True)
    q.add_argument('--core-power', type=int, required=True); q.add_argument('--level', type=int, required=True)
    q.add_argument('--prior', type=Path, nargs='*'); q.add_argument('--out', type=Path, required=True)
    q = sub.add_parser('run'); q.add_argument('--plan', type=Path, required=True)
    q.add_argument('--shard', type=int, required=True); q.add_argument('--shards', type=int, required=True)
    q.add_argument('--workers', type=int, default=120); q.add_argument('--out', type=Path, required=True)
    q = sub.add_parser('account'); q.add_argument('--plan', type=Path, required=True)
    q.add_argument('--core', type=Path, required=True); q.add_argument('--core-power', type=int, required=True)
    q.add_argument('--rows', type=Path, nargs='+', required=True); q.add_argument('--out', type=Path, required=True)
    a = ap.parse_args()
    dict(plan=plan, run=run, account=account)[a.cmd](a)


if __name__ == '__main__':
    main()
