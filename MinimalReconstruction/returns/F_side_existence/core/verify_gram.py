#!/usr/bin/env python3
"""Replay saved, explicit INTEGER cofactor certificates for side existence.

Default mode never computes a quotient or generates a certificate.  It rebuilds
the fixed targets, loads the supplied cofactor, and multiplies coefficient
blocks.  All acceptance comparisons are exact coefficient comparisons.

The two larger identities are partitioned by powers of the independent s,S.
For each (i,j) we check R_ij=sum Q_ab*C_(i-a,j-b). Summing these ordinary
polynomial identities gives R=Q*C. No coefficient of Q is assumed zero.
"""
from pathlib import Path
from time import perf_counter
import json
import sys
import gram_model as gm

CERT = Path(__file__).resolve().parents[1]/'certificates'/'gram_certificates.json'

def require(ok, message):
    if not ok:
        raise RuntimeError(message)

def rows(poly, drop=0):
    out = []
    for exponent, coefficient in sorted(poly.items()):
        require(coefficient.denominator == 1, 'noninteger polynomial coefficient')
        require(all(e == 0 for e in exponent[:drop]), 'dropped nonzero exponent')
        out.append([list(exponent[drop:]), int(coefficient)])
    return out

def parse(data, ring, drop=0):
    result = {}
    require(isinstance(data, list), 'coefficient rows must be a list')
    for record in data:
        require(isinstance(record,list) and len(record)==2, 'bad coefficient record')
        exponent, coefficient = record
        require(isinstance(exponent,list) and len(exponent)==ring.ngens-drop,
                'wrong exponent dimension')
        require(all(type(x) is int and x>=0 for x in exponent), 'bad exponent')
        require(type(coefficient) is int and coefficient!=0, 'bad integer coefficient')
        key = (0,)*drop+tuple(exponent)
        require(key not in result, 'duplicate monomial')
        result[key] = coefficient
    result = ring.from_dict(result)
    require(rows(result,drop)==data, 'noncanonical coefficient order')
    return result

def split(poly):
    parts = {}
    for exponent, coefficient in poly.items():
        parts.setdefault(exponent[:2], {})[(0,0)+exponent[2:]] = coefficient
    return {key:gm.RG.from_dict(value) for key,value in parts.items()}

def encode_parts(parts):
    return [[list(key),rows(poly,2)] for key,poly in sorted(parts.items())]

def decode_parts(data):
    result = {}
    require(isinstance(data,list), 'blocks must be a list')
    for record in data:
        require(isinstance(record,list) and len(record)==2, 'bad block')
        powers, coefficients = record
        require(isinstance(powers,list) and len(powers)==2 and
                all(type(x) is int and x>=0 for x in powers), 'bad block powers')
        key = tuple(powers)
        require(key not in result, 'duplicate coefficient block')
        poly = parse(coefficients,gm.RG,2)
        require(bool(poly), 'zero coefficient blocks must be omitted')
        result[key] = poly
    require(encode_parts(result)==data, 'noncanonical coefficient blocks')
    return result

def make_data(targets):
    BR, bf, bridge = gm.bridge_targets()
    return {
      'format':'side-existence-gram-integer-cofactors-v1',
      'variables':gm.VARIABLES,
      'conjugation':'S=bar(s), T=bar(t), Q=bar(r); these are independent in each polynomial identity. y=g*z.',
      'identity':'clearing_factor*auxiliary_residual = (y^2-chi*y+g^2*eta)*cofactor',
      'partition_variables':['s','S'],
      'block_identity':'residual[i,j] = sum(modulus[a,b]*cofactor[i-a,j-b])',
      'modulus_blocks':encode_parts(split(gm.MODULUS)),
      'certificates':[
        {'name':name,'statement':statement,'clearing_factor':clearing,
         'residual_blocks':encode_parts(split(poly)),
         'cofactor_blocks':encode_parts(split(gm.quotient_by_modulus(poly)))}
         for name,statement,poly,clearing in targets],
      'bridges':{
        'variables':[str(x) for x in BR.gens],
        'modulus':rows(bf),
        'certificates':[{'name':name,'target':rows(target),'cofactor':rows(cofactor)}
                       for name,target,cofactor in bridge],
      },
    }

def verify(data, targets):
    require(data.get('format')=='side-existence-gram-integer-cofactors-v1','wrong format')
    require(data.get('variables')==gm.VARIABLES,'wrong variables')
    require(data.get('partition_variables')==['s','S'],'wrong partition')
    fb = decode_parts(data['modulus_blocks'])
    require(fb==split(gm.MODULUS),'wrong sheet quadratic')
    saved = data['certificates']
    require(len(saved)==len(targets),'wrong target inventory')
    records = []
    for item, (name, statement, poly, clearing) in zip(saved,targets):
        require(item['name']==name and item['statement']==statement, 'changed target name/statement')
        require(item['clearing_factor']==clearing, name+': changed denominator')
        residual = decode_parts(item['residual_blocks'])
        cofactor = decode_parts(item['cofactor_blocks'])
        require(residual==split(poly), name+': saved residual does not match fixed circuit')
        right = {}
        for a, f in fb.items():
            for b, c in cofactor.items():
                index = (a[0]+b[0],a[1]+b[1])
                right[index] = right.get(index,gm.RG.zero)+f*c
        all_indices = sorted(set(residual)|set(right))
        for index in all_indices:
            require(residual.get(index,gm.RG.zero)==right.get(index,gm.RG.zero),
                    name+': coefficient cofactor equation failed at '+str(index))
        largest = max((len(x) for x in residual.values()),default=0)
        largest_cofactor = max((len(x) for x in cofactor.values()),default=0)
        require(largest<=2000 and largest_cofactor<=2000, name+': oversized proof block')
        records.append({'name':name,'status':'PASS','unpartitioned_target_terms':len(poly),
            'unpartitioned_cofactor_terms':sum(len(x) for x in cofactor.values()),
            'coefficient_identities':len(all_indices),'largest_identity_side_terms':largest,
            'largest_cofactor_block_terms':largest_cofactor})
    BR, bf, bridge = gm.bridge_targets()
    bd = data['bridges']
    require(bd['variables']==[str(x) for x in BR.gens], 'bridge variable list')
    require(parse(bd['modulus'],BR)==bf, 'bridge quadratic')
    require(len(bd['certificates'])==len(bridge), 'bridge inventory')
    for item,(name,target,cofactor) in zip(bd['certificates'],bridge):
        require(item['name']==name, 'bridge name')
        left=parse(item['target'],BR); right=parse(item['cofactor'],BR)
        require(left==target and right==cofactor, 'bridge differs from fixed circuit')
        require(left==bf*right, 'bridge cofactor identity fails')
    return records

def main():
    require(sys.argv[1:] in ([],['--write']), 'usage: verify_gram.py [--write]')
    start=perf_counter()
    targets=gm.targets()
    if sys.argv[1:]==['--write']:
        CERT.parent.mkdir(parents=True,exist_ok=True)
        CERT.write_text(json.dumps(make_data(targets),separators=(',',':'))+'\n')
    require(CERT.is_file(),'missing supplied coefficient certificate')
    records=verify(json.loads(CERT.read_text()),targets)
    print(json.dumps({'status':'PASS','module':'arbitrary-Gram polynomial identities',
         'arithmetic':'integer/rational polynomial coefficients only',
         'seconds':round(perf_counter()-start,6),'bridges':4,'records':records},indent=2))

if __name__=='__main__':
    try:
        main()
    except Exception as error:
        print('FAIL: '+str(error),file=sys.stderr)
        sys.exit(1)
