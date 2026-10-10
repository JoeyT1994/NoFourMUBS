#!/usr/bin/env python3
"""Freeze the exact accepted certificate set after generation.

This is generation tooling. The default independent acceptance replay checks
the complete file set, hashes and claim counts, then rechecks every algebraic
claim. It never imports this file.
"""
from pathlib import Path
import importlib.util
import hashlib
import json

OUT=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('step1_checker',OUT/'verify_certificates.py')
V=importlib.util.module_from_spec(spec);spec.loader.exec_module(V)
files=[]
for path in sorted((OUT/'certificates').glob('*.json')):
    if path.name=='manifest.json':
        continue
    d=json.loads(path.read_text());V.no_numeric_json(d)
    kind=d['kind']
    if kind=='polynomial_bundle':
        claims,stats=V.check_polynomial_bundle(d)
    elif kind=='algebraic_bundle':
        claims,stats=V.check_algebraic_bundle(d)
    elif kind=='endpoint_bundle':
        claims,stats=V.check_endpoint_bundle(d)
    else:
        raise ValueError(kind)
    files.append({'file':path.name,'kind':kind,'claims':str(claims),
                  'bytes':str(path.stat().st_size),'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
                  'statistics':stats})
manifest={'kind':'certificate_manifest','schema_version':'1',
 'purpose':'Complete finite-certificate set for the primary Step 1 paper proof and optional endpoint corollary.',
 'files':files,'total_claims':str(sum(int(f['claims']) for f in files)),
 'lean_status':'UNCOMPILED; see STATUS.md. Exact replay is not a claim of Lean compilation.'}
(OUT/'certificates/manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Frozen',len(files),'certificates;',manifest['total_claims'],'exact claims.')
