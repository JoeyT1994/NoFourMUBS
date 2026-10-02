"""Exact fixed-input spectral compatibility; phase Hadamard convention.

All entries are in a conjugation-stable algebraic number field. There are no
floating-point rank thresholds, generic-rank assumptions, or legacy imports.
This is a theorem implementation, not a parametric-locus or quartet solver.
"""
from functools import lru_cache
import sympy as sp
from sympy.polys.matrices import DomainMatrix


class Exact:
    def __init__(self, field=None):
        self.F = field or sp.QQ.algebraic_field(sp.I, sp.sqrt(2), sp.sqrt(3))
        # The displayed embedding, not an arbitrary Galois/deck automorphism.
        self.generator_bar = self.F.from_sympy(sp.conjugate(self.F.ext.as_expr()))

    def scalar(self, x):
        x = sp.sympify(x)
        if x.free_symbols or x.has(sp.Float):
            raise ValueError('fixed exact algebraic inputs required; floats/symbolic parameters are not certificates')
        return self.F.from_sympy(x)

    @lru_cache(maxsize=8192)
    def bar(self, x):
        out = self.F.zero
        for coefficient in x.to_list():
            out = out*self.generator_bar + self.F.convert(coefficient)
        return out

    def matrix(self, M):
        M = sp.Matrix(M)
        return DomainMatrix([[self.scalar(M[i,j]) for j in range(M.cols)]
                             for i in range(M.rows)], M.shape, self.F).to_sparse()

    def zero(self, n): return DomainMatrix.zeros((n,n), self.F)
    def eye(self, n): return DomainMatrix.eye((n,n), self.F)

    def star(self, M):
        out = {}
        for i,row in M.to_dod().items():
            for j,x in row.items(): out.setdefault(j,{})[i] = self.bar(x)
        return DomainMatrix(out,(M.shape[1],M.shape[0]),self.F)

    def scale(self, M, x): return M.scalarmul(self.scalar(x))

    def tensor(self, A, B):
        n,m = B.shape
        out = {}
        for i,row in A.to_dod().items():
            for j,a in row.items():
                for k,brow in B.to_dod().items():
                    for l,b in brow.items(): out.setdefault(i*n+k,{})[j*m+l]=a*b
        return DomainMatrix(out,(A.shape[0]*n,A.shape[1]*m),self.F)

    def is_zero(self, M): return not M.to_dod()

    def validate_hadamard(self, H):
        d,n = H.shape
        if d != n or d < 2: raise ValueError('square phase Hadamard of order at least two required')
        if any(x*self.bar(x)!=self.F.one for row in H.to_list() for x in row):
            raise ValueError('entries must have exact unit modulus')
        if not self.is_zero(self.star(H)*H-self.scale(self.eye(d),d)):
            raise ValueError('columns are not exactly orthogonal')

    def stabilized(self, G):
        if not G:raise ValueError('nonempty unitary family required')
        d = G[0].shape[0]
        if any(g.shape!=(d,d) or not self.is_zero(self.star(g)*g-self.eye(d)) for g in G):
            raise ValueError('stabilized-kernel theorem requires exact unitaries of one dimension')
        if not self.is_zero(G[0]-self.eye(d)):
            raise ValueError('the distinguished first operator must be identity')
        K = self.zero(d)
        for j in range(1,len(G)):
            for k in range(j+1,len(G)):
                C = G[j]*G[k]-G[k]*G[j]
                K = K+self.star(C)*C
        ranks = [K.rank()]
        stars = [self.star(g) for g in G[1:]]
        for _ in range(d):
            following = K
            for g,gs in zip(G[1:],stars): following=following+gs*K*g+g*K*gs
            K=following
            ranks.append(K.rank())
        return K,ranks

    def triangle(self, A, B, X):
        for H in (A,B,X): self.validate_hadamard(H)
        if not A.shape==B.shape==X.shape: raise ValueError('triangle dimensions disagree')
        d=A.shape[0]
        aa,bb,xx=A.to_list(),B.to_list(),X.to_list()
        # V_k=sqrt(d) T_k, so G_k=V_1^* V_k/d: no square-root normalization.
        V=[DomainMatrix([[self.bar(aa[k][i])*bb[k][j]*self.bar(xx[i][j])
                           for j in range(d)] for i in range(d)],(d,d),self.F).to_sparse()
           for k in range(d)]
        G=[self.scale(self.star(V[0])*v,sp.Rational(1,d)) for v in V]
        assert self.is_zero(G[0]-self.eye(d))
        K,ranks=self.stabilized(G)
        return {'V':V,'G':G,'K':K,'ranks':ranks,'count':d-ranks[-1]}

    def quartet(self, A, B, C, X, Y):
        left,right=self.triangle(A,B,X),self.triangle(A,C,Y)
        d=A.shape[0]
        tensors=[self.tensor(g,self.star(j)) for g,j in zip(left['G'],right['G'])]
        L=self.tensor(left['K'],self.eye(d))+self.tensor(self.eye(d),right['K'])
        bb,cc=B.to_list(),C.to_list()
        S=[]
        for i in range(d):
            for j in range(d):
                M=self.zero(d*d)
                for k,T in enumerate(tensors):
                    M=M+T.scalarmul(self.bar(bb[k][i])*cc[k][j]/self.F.convert(d))
                residual=self.star(M)*M-self.scale(self.eye(d*d),sp.Rational(1,d))
                S.append(residual)
                L=L+residual*residual
        return {'L':L,'left':left,'right':right,'S':S}

    def kernel(self, M):
        """Return an exact spanning matrix (columns), not chosen joint eigenlines."""
        return M.nullspace().transpose()
