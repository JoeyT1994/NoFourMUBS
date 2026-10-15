#!/usr/bin/env python3
"""Exact rational subchecker for the regional theorem, NOT a root-coverage checker.
No supplied atlas region is certified by running this file. Self-tests check
quadratic-ball witnesses and graph logic, including deliberately false inputs.
"""
import sympy as s


def positive_definite_rational(M):
    M=s.Matrix(M)
    if M.rows!=M.cols or M!=M.T:return False
    if any(not z.is_Rational for z in M):return False
    return all(M[:k,:k].det()>0 for k in range(1,M.rows+1))


def ball_witness(A,b,c,rho,lam):
    """True => eta^T A eta + 2 b^T eta+c>0 for ||eta||<=rho.
    All entries must be exact rationals. Uniform analytic error bounds must
    already have been subtracted in c (or otherwise in the lower polynomial).
    """
    A=s.Matrix(A);b=s.Matrix(b);c=s.sympify(c);rho=s.sympify(rho);lam=s.sympify(lam)
    if A.rows!=A.cols or b.shape!=(A.rows,1) or A!=A.T:return False
    if any(not z.is_Rational for z in list(A)+list(b)+[c,rho,lam]):return False
    if rho<0 or lam<0:return False
    M=(A+lam*s.eye(A.rows)).row_join(b)
    M=M.col_join(b.T.row_join(s.Matrix([[c-lam*rho*rho]])))
    return positive_definite_rational(M)


def find_clique(adjacency,k):
    """Exact finite Boolean clique decision, returned vertices or None."""
    n=len(adjacency)
    if any(len(row)!=n for row in adjacency):raise ValueError('graph must be square')
    if any(adjacency[i][i] for i in range(n)):raise ValueError('loops not allowed')
    if any(bool(adjacency[i][j])!=bool(adjacency[j][i]) for i in range(n) for j in range(n)):
        raise ValueError('graph must be symmetric')
    masks=[sum((1<<j) for j in range(n) if adjacency[i][j]) for i in range(n)]
    def walk(chosen,available):
        if len(chosen)==k:return chosen
        while available.bit_count()>=k-len(chosen):
            vbit=available&-available;available-=vbit;v=vbit.bit_length()-1
            ans=walk(chosen+[v],available&masks[v])
            if ans is not None:return ans
        return None
    return walk([], (1<<n)-1)


def check(name,truth):
    print(('PASS' if truth else 'FAIL')+': '+name)
    if not truth:raise AssertionError(name)


def tests():
    A=s.diag(-1,0,1,2);b=s.Matrix([s.Rational(1,20),0,0,0]);rho=s.Rational(3,10)
    check('positive rational 4D quadratic-ball witness accepted',ball_witness(A,b,s.Rational(1,2),rho,s.Integer(2)))
    check('false negative-constant witness rejected',not ball_witness(A,b,s.Rational(-1,2),rho,s.Integer(2)))
    check('negative multiplier rejected',not ball_witness(s.eye(4),s.zeros(4,1),s.Integer(10),rho,s.Integer(-1)))
    check('floating-point coefficients rejected',not ball_witness(s.eye(4),s.zeros(4,1),.5,rho,s.Integer(1)))
    graph=[[i//4!=j//4 for j in range(16)] for i in range(16)]
    check('complete four-partite graph has a four-clique',find_clique(graph,4) is not None)
    check('complete four-partite graph has no five-clique',find_clique(graph,5) is None)
    for i in range(5):
        for j in range(5):graph[i][j]=i!=j
    check('inserted five-clique is detected',find_clique(graph,5) is not None)
    print('PASS: ALL EXACT ALGEBRA/GRAPH SUBCHECKER SELF-TESTS')
    print('NOTICE: no Hadamard-region root coverage or tube radius is certified here.')
if __name__=='__main__':tests()
