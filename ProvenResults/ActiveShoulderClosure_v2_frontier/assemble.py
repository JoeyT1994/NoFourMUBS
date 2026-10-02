"""Reuse the sealed v2 monotone forest assembler with this extension's audit."""
from bootstrap import load_base
_base=load_base('assemble')
globals().update({k:v for k,v in vars(_base).items() if not k.startswith('_')})
if __name__=='__main__': main()
