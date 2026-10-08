"""Six-sine real side moment-Jacobian determinant, with exact signs."""
from interval import *
from collections import Counter

def parity(values):return (-1)**sum(values[i]>values[j] for i in range(len(values)) for j in range(i+1,len(values)))
TERMS=[]
for i in range(3):
 for j in range(3):
  if i==j:continue
  a,b=[k for k in range(3) if k!=i];cc,d=[k for k in range(3) if k!=j]
  TERMS.append((i,j,a,b,cc,d,parity([2*a,2*b,2*cc+1,2*d+1,2*i,2*j+1])))

