"""Materialize an existing composite list once, with kernel equality required.

This preserves the existing list shape, including all trailing zeros. It is
not a new polynomial certificate, and never modifies checked stage sources.
"""
from pathlib import Path
import hashlib
import json
import re

from prepare_nonzero_sum_stage_pilot import ROOT, AUDIT, OUT, BASE, NS
from prepare_nonzero_polynomial_checks import DC
from reuse_preflight import require_reuse_review


def add(a, b, level):
    if level == 0:
        return a+b
    n = min(len(a), len(b))
    return [add(x,y,level-1) for x,y in zip(a,b)]+a[n:]+b[n:]


def mul(a, b, level):
    if level == 0:
        return a*b
    out = []
    for c in reversed(a):
        scaled = [mul(c,d,level-1) for d in b]
        out = add(scaled, [0 if level == 1 else []]+out, level)
    return out


def data(name, stem):
    text = (OUT/(stem+'.lean')).read_text()
    parts = re.findall(r'^def '+name+r'_part\d+ : [^\n]* := (\[.*\])$',text,re.M)
    assert parts
    return sum((json.loads(s) for s in parts),[])


def main():
    require_reuse_review('critical_nonzero_sum_cached_input')
    r58 = data('r0058','Remaining0058Data')
    r68 = data('r0068','Remaining0068Data')
    quotient = data('n0069_quotient','Reused0069Data')
    r69 = [[[0]+r for r in c] for c in quotient]
    r35 = mul([[[8]]],[[],[[1]]],3)
    r70 = mul(r69,[[[0,1]]],3)
    r71 = add(r68,r70,3)
    r72 = mul(r35,r58,3)
    r73 = mul(r72,[[[2]]],3)
    r74 = add(r71,r73,3)
    source = 'import '+BASE+'Remaining0076Data\n'
    source += f'''set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace {NS}
'''
    parts = []
    for i in range(0,len(r74),8):
        part = f'cached0074_part{i//8:02d}'
        parts.append(part)
        source += f'def {part} : List {DC}.XY := '+json.dumps(r74[i:i+8],separators=(',',':'))+'\n'
    source += f'def cached0074 : List {DC}.XY := '+' ++ '.join(parts)+'\n'
    source += 'theorem r0074_cached : r0074 = cached0074 := by rfl\n'
    source += '\nend '+NS+'\n'
    path = OUT/'Remaining0076CachedInput.lean'
    if path.exists():
        assert path.read_text() == source
    else:
        path.write_text(source)
    print(json.dumps({'outer_length':len(r74),'nonzero_coefficients':sum(c!=0 for p in r74 for r in p for c in r),
                      'stored_integer_entries':sum(len(r) for p in r74 for r in p),
                      'bytes':len(source.encode()),'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
                      'kernel_equality_checked':False,'atlas_certification':False}))


if __name__ == '__main__':
    main()
