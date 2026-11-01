"""Certifier of the MUB triple classification in dimension 6: one dyadic tree per seed ball of the atlas.

  python -m certifier verify CERT [--ball N]       one ball's certificate
  python -m certifier verify-all MANIFEST          every ball the manifest lists, then the atlas summary
  python -m certifier close BALL OUT               search for a certificate (native leaves first, then plane leaves)

See README.md for what a certificate proves and what the proof depends on.
"""
__version__ = '1.0.0'
