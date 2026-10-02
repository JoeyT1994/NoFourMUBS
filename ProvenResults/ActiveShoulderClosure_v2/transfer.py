"""Exact improvement of the matrix-to-raw-amplitude transfer bound.

For 0 <= d <= 1/8, sqrt(6)<5/2, sqrt(30)<11/2, and
1-sqrt(1-d*d) <= (8/15)*d*d. Thus the adopted exact transfer
expression is bounded above by (4/3)*d*d+(11/2)*d.
"""
from fractions import Fraction as F

def bound(d):
    d=F(d)
    if not 0<=d<=F(1,8):raise ValueError('transfer radius outside proved range')
    return F(4,3)*d*d+F(11,2)*d

def matrix_radius(cell):
    t=cell['tolerance_denominator'];key=(cell['grid'],cell['a'],cell['b'])
    if t==5:
        if key not in {(180,0,0),(180,2,0)}:raise ValueError('unproved denominator-5 cell')
        radius=F(1,28)
    elif t==6:
        if key not in {(180,0,0),(180,2,0),(180,3,0),(180,3,1),(180,5,0)}:raise ValueError('unproved denominator-6 cell')
        radius=F(1,34)
    else:return F(1,6*t)
    if not bound(radius)<F(1,t):raise ValueError('exact matrix/raw transfer failed')
    return radius

def controls():
    if not (F(5,2)**2>6 and F(11,2)**2>30 and 1-F(1,8)**2>=F(7,8)**2):raise ValueError('radical comparison')
    out={}
    for radius,tolerance in [(F(1,28),F(1,5)),(F(1,34),F(1,6))]:
        upper=bound(radius)
        if not upper<tolerance:raise ValueError('transfer margin')
        out[str(radius)]=dict(raw_tolerance=str(tolerance),rational_upper=str(upper),strict_margin=str(tolerance-upper))
    return dict(status='PASS',bounds=out)
