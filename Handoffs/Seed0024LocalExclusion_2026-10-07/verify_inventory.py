"""Integrity and exact geometry checks only; does not prove exclusion."""
from pathlib import Path
from fractions import Fraction as F
import hashlib,json

P=Path(__file__).resolve().parent
for line in (P/'MANIFEST.sha256').read_text().splitlines():
    digest,name=line.split('  ',1)
    path=P/name
    assert path.is_file(),name
    assert hashlib.sha256(path.read_bytes()).hexdigest()==digest,name
status=json.loads((P/'STATUS.json').read_text())
assert status['new_lean_closed_boxes']==0
assert status['full_no_four_mub_theorem_proved'] is False
j=json.loads((P/'INPUT_BINDINGS.json').read_text())
ids=set(j['residual_ids']);credited=set(j['credited_ids'])
assert len(ids)==36 and credited=={6491830,17434864} and not ids&credited
rows=j['transcription'];assert len(rows)==38
assert {r['id'] for r in rows}==ids|credited
delta=F(77,100000)
for r in rows:
    if r['id'] not in ids:continue
    b=[abs(F(c))+F(h) for c,h in zip(r['centers'],r['radii'])]
    assert (b[0]<=2*delta and b[1]<=delta) or (b[0]<=delta and b[1]<=2*delta),r['id']
for r in json.loads((P/'CHECKED_MODULES.json').read_text()):
    assert r['success'] and r['exit_code']==0
    source=P/'lean'/(r['module']+'.lean')
    assert hashlib.sha256(source.read_bytes()).hexdigest()==r['source_sha256']
    assert 'sorryAx' not in (P/'checks'/(r['module']+'.axioms.txt')).read_text()
assert F(1,75)+F(1,60)==F(3,100)<F(1,30)
print('PASS: pinned inventory and all 36 exact phase bounds. Full Lean exclusion remains open.')
