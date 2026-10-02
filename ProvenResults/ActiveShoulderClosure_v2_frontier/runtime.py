"""Tested Python arithmetic environment; cover checks Julia separately."""
import sys
def check():
    import numpy,sympy,mpmath,flint
    versions=dict(python='.'.join(map(str,sys.version_info[:3])),numpy=numpy.__version__,sympy=sympy.__version__,mpmath=mpmath.__version__,python_flint=flint.__version__)
    required=dict(numpy='2.2.4',sympy='1.13.1',mpmath='1.3.0',python_flint='0.9.0')
    if sys.version_info[:2]!=(3,11) or any(versions[k]!=v for k,v in required.items()):raise ValueError('unsupported arithmetic environment: '+str(versions))
    return versions
