#!/usr/bin/env python3
"""One-time certificate generation from the supplied exact reference verifier.

This script is not in the acceptance trust boundary. The return package's
verify_certificates.py reconstructs and verifies the data independently.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import permutations
from collections import Counter
import importlib.util
import json

OUT = Path(__file__).resolve().parents[1]
SOURCE = OUT.parent/'reference/coverage/returns/A_deltoid/exact_maxima.py'
if not SOURCE.exists():
    SOURCE = Path(__file__).resolve().parent/'reference_exact_maxima.py'
spec = importlib.util.spec_from_file_location('reference_exact_maxima', SOURCE)
E = importlib.util.module_from_spec(spec)
spec.loader.exec_module(E)


def dump(name, data):
    (OUT/'certificates'/name).write_text(json.dumps(data,indent=2)+'\n')


def sparse(p):
    return [[str(c),list(map(str,m))] for m,c in sorted(p.items())]


def add(*a): return ['add',*a]
def mul(*a): return ['mul',*a]
def neg(a): return ['neg',a]
def pw(a,n): return ['pow',a,str(n)]


def main():
    R,parts = E.structural_polynomial()
    seed = (1,2,-1,-2)
    maps = E.seed_maps()
    counts = Counter(tuple(sum(row[j]*seed[j] for j in range(4)) for row in M) for _,M in maps)
    exponents = {0}
    for w in counts:
        exponents.update(w)
        for p in [R,*parts.values()]:
            exponents.update(sum(k[i]*w[i] for i in range(4)) for k in p)
    data = {
      'kind':'endpoint_bundle',
      'purpose':'Exact structural bridge, 144 seed symmetries, all 18 lifts, values, gradients and Hessians.',
      'required_for_W':'The compact definition, base positivity, and complete lift-to-orbit equality; Hessians strengthen the optional Theorem 1 corollary.',
      'laurent_term_count':str(len(R)),
      'covering_matrix':[[str(x) for x in row] for row in ((-1,-1,-1,0),(0,-1,-1,-1),(-1,0,-1,-1),(-1,-1,0,-1))],
      'compact_parts':{},
      'field_modulus':'T^2+15',
      'field_embedding':'T=i*sqrt(15), positive sqrt(15)',
      'field_powers':[{'exponent':str(n),'value':list(map(str,E.qpow(n)))} for n in sorted(exponents)],
      'base_seed':list(map(str,seed)),
      'parts_at_base':{name:list(map(str,E.evaluate(p,seed))) for name,p in parts.items()},
      'maps':[], 'orbit':[], 'lifts':[]
    }
    M = tuple(tuple(map(int,row)) for row in data['covering_matrix'])
    data['compact_parts'] = {name:sparse(E.transformed_polynomial(parts[name],M)) for name in ('g','eta','chi')}
    for (rp,cp,tr,cj),M in maps:
        data['maps'].append({'row_permutation':list(map(str,rp)), 'column_permutation':list(map(str,cp)),
                             'transpose':str(tr),'conjugate':str(cj),
                             'matrix':[[str(x) for x in row] for row in M],'determinant':str(E.det(M))})
    for w in sorted(counts):
        hessian = [[-E.moment(R,w,(i,j))[0] for j in range(4)] for i in range(4)]
        data['orbit'].append({'exponents':list(map(str,w)), 'coordinates':[list(map(str,E.qpow(x))) for x in w],
                               'multiplicity':str(counts[w]), 'value':list(map(str,E.evaluate(R,w))),
                               'gradient_moments':[list(map(str,E.moment(R,w,(i,)))) for i in range(4)],
                               'hessian':[[str(x) for x in row] for row in hessian],
                               'sylvester_minors':[str(E.det([row[:n] for row in hessian[:n]])) for n in range(1,5)]})
    for sg in (-1,1):
        for e in sorted(set(permutations((-2*sg,sg,sg)))):
            for o in sorted(set(permutations((2*sg,-sg,-sg)))):
                w = (e[0]-o[1],o[0]-e[2],o[0]-e[1],e[0]-o[2])
                data['lifts'].append({'even':list(map(str,e)), 'odd':list(map(str,o)), 'seed':list(map(str,w))})
    dump('endpoints.json',data)

    defs = {
      'p':add('x0','x2'), 'q':add('x1','x3'),
      'r':add('x0',neg('x2')), 's':add('x1',neg('x3')),
      'negative_hessian':add(mul('80',pw('x0',2)),mul('46',pw('x1',2)),mul('80',pw('x2',2)),mul('46',pw('x3',2)),
          mul('-80','x0','x1'),mul('-156','x0','x2'),mul('78','x0','x3'),
          mul('78','x1','x2'),mul('-12','x1','x3'),mul('-80','x2','x3')),
      'hessian_sos':add(pw(add('p',mul('-1/2','q')),2),mul('79/4',pw('q',2)),
                        mul('79',pw(add('r',mul('-1/2','s')),2)),mul('25/4',pw('s',2))),
      'y':mul('1/4',add('w','-3')),
      'c_square':mul('1/8',add('1','w')),
      'extra_value':mul('25/2',add('25',mul('-11','w'))),
      'curvature':mul('660',add(mul('46','y'),'9')),
    }
    ids = [
      {'name':'negative_hessian_SOS','lhs':'negative_hessian','rhs':'hessian_sos'},
      {'name':'symmetric_inverse_x0','lhs':add('p','r'),'rhs':mul('2','x0')},
      {'name':'symmetric_inverse_x1','lhs':add('q','s'),'rhs':mul('2','x1')},
      {'name':'symmetric_inverse_x2','lhs':add('p',neg('r')),'rhs':mul('2','x2')},
      {'name':'symmetric_inverse_x3','lhs':add('q',neg('s')),'rhs':mul('2','x3')},
      {'name':'y_minimal_relation','lhs':add(mul('4',pw('y',2)),mul('6','y'),'1'),'rhs':mul('1/4',add(pw('w',2),'-5'))},
      {'name':'c_square_relation','lhs':add(mul('16',pw('c_square',2)),mul('-4','c_square'),'-1'),'rhs':mul('1/4',add(pw('w',2),'-5'))},
      {'name':'cos_double_angle','lhs':'y','rhs':add(mul('2','c_square'),'-1')},
      {'name':'extra_value_relation','lhs':add(pw('extra_value',2),mul('-625','extra_value'),'3125'),
       'rhs':mul('75625/4',add(pw('w',2),'-5'))},
      {'name':'curvature_radical','lhs':'curvature','rhs':mul('330',add(mul('23','w'),'-51'))},
      {'name':'unit_q_norm','lhs':add('1/16',mul('1/16',pw('sqrt_fifteen',2)),'-1'),
       'rhs':mul('1/16',add(pw('sqrt_fifteen',2),'-15'))},
    ]
    dump('endpoint_identities.json',{'kind':'polynomial_bundle','variables':['x0','x1','x2','x3','w','sqrt_fifteen'],
                                     'definitions':defs,'identities':ids})
    iso=[]
    for name,cs,lo,hi,sign in [
        ('cos_alpha',['-1','4'],'63/256','65/256','positive'),
        ('sqrt_five',['-5','0','1'],'143/64','9/4','positive'),
        ('sqrt_fifteen',['-15','0','1'],'991/256','31/8','positive'),
        ('transverse_y',['1','6','4'],'-49/256','-3/16','positive'),
        ('extra_positive_value',['3125','-625','1'],'5','6','negative'),
    ]:
        ev=lambda x:sum(F(c)*x**i for i,c in enumerate(cs))
        iso.append({'name':name,'coefficients':cs,'lower':lo,'upper':hi,
                    'value_lower':str(ev(F(lo))),'value_upper':str(ev(F(hi))), 'derivative_sign':sign})
    dump('algebraic_numbers.json',{'kind':'algebraic_bundle','isolations':iso,
        'rational_inequalities':[
          {'name':'transverse_curvature_sign_by_squaring','lhs':'2601','rhs':'2645','relation':'<'},
          {'name':'transverse_curvature_dyadic_bound','lhs':'0','rhs':'25/128','relation':'<'},
          {'name':'positive_maximum','lhs':'0','rhs':'1594323/4096','relation':'<'},
          {'name':'hessian_SOS_coefficient_1','lhs':'0','rhs':'79/4','relation':'<'},
          {'name':'hessian_SOS_coefficient_2','lhs':'0','rhs':'79','relation':'<'},
          {'name':'hessian_SOS_coefficient_3','lhs':'0','rhs':'25/4','relation':'<'},
        ]})
    print('Generated endpoint, Hessian, and algebraic-number certificates.')


if __name__=='__main__':
    main()
