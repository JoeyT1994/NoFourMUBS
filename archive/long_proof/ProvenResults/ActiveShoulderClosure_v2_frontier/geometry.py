"""Inherited rational geometry; HERE deliberately identifies sealed v2 data."""
from bootstrap import load_base
_base = load_base('geometry')
globals().update({k:v for k,v in vars(_base).items() if not k.startswith('_')})
