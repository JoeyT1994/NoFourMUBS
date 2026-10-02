"""Parse the retained Julia receipts; no timing or success values are supplied by hand."""
from pathlib import Path
import json
import re
import sys

HERE = Path(__file__).resolve().parent
rows = []
for name in ('depth1.log', 'depth2.log', 'references.log'):
    path = HERE/name
    if not path.exists():
        continue
    for line in path.read_text().splitlines():
        if not line.startswith('(fixture = '):
            continue
        def field(key):
            return re.search(r'\b'+key+r' = ([^,)]+)',line).group(1)
        rows.append(dict(log=name,fixture=field('fixture').strip('"'),line=int(field('line')),
                         mode=field('mode').strip('"'),wall_seconds=float(field('seconds')),
                         cpu_seconds=float(field('cpu_seconds')),ok=field('ok')=='true',
                         reason=field('reason').lstrip(':'),nodes=int(field('nt')),
                         labels=int(field('nlabels')),kept=int(field('nkept')),
                         level=int(field('level'))))
if '--complete' in sys.argv:
    assert len(rows)==28
    for log,count in [('depth1.log',6),('depth2.log',6),('references.log',2)]:
        for mode in ('original','partition'):
            group=[r for r in rows if r['log']==log and r['mode']==mode]
            assert sorted(r['line'] for r in group)==list(range(1,count+1))
    assert all(r['ok'] for r in rows if r['mode']=='partition')
result={'records':rows,'scope':'Local retained failed-cell benchmark; not an unbiased campaign cost estimate.'}
for name,selected in [('retained', [r for r in rows if r['log']!='references.log']),
                      ('references',[r for r in rows if r['log']=='references.log'])]:
    groups={m:[r for r in selected if r['mode']==m] for m in ('original','partition')}
    stats={m:{'cells':len(v),'certified':sum(r['ok'] for r in v),
              'cpu_seconds':sum(r['cpu_seconds'] for r in v),
              'wall_seconds':sum(r['wall_seconds'] for r in v),
              'nodes':sum(r['nodes'] for r in v)} for m,v in groups.items()}
    keys=lambda v: {(r['fixture'],r['line']) for r in v}
    if groups['partition'] and keys(groups['original'])==keys(groups['partition']):
        stats['cpu_ratio']=stats['original']['cpu_seconds']/stats['partition']['cpu_seconds']
        stats['node_ratio']=stats['original']['nodes']/stats['partition']['nodes']
    result[name]=stats
(HERE/'summary.json').write_text(json.dumps(result,indent=2)+'\n')
table=['# Paired measurements','',
       'CPU seconds are local process CPU time. Both methods use the same input radius and resource limits.',
       '', '| Cell | Original status | Original CPU-s | New CPU-s | Original nodes | New nodes |',
       '|---|---|---:|---:|---:|---:|']
for old in [r for r in rows if r['mode']=='original']:
    new=next((r for r in rows if r['mode']=='partition' and (r['log'],r['line'])==(old['log'],old['line'])),None)
    if new is None: continue
    name={'depth1.log':'D1','depth2.log':'D2','references.log':'Reference'}[old['log']]+'-'+str(old['line'])
    status='certified' if old['ok'] else old['reason']
    table.append(f"| {name} | {status} | {old['cpu_seconds']:.2f} | {new['cpu_seconds']:.2f} | {old['nodes']:,} | {new['nodes']:,} |")
table += ['', 'Every new-method row is certified in the completed receipt. Reference-1 is g3; Reference-2 is X₆.',
          'Reference baseline failures are censored at the resource limit, so their ratios are not ratios of successful completion times.']
(HERE/'RESULTS.md').write_text('\n'.join(table)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='records'},indent=2))
