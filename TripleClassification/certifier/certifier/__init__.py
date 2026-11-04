"""Certifier of the MUB triple classification in dimension 6: one dyadic tree per ball.

  python certify.py close BALL OUT               search for a certificate (native whole ball, then normal-form cells)
  python certify.py verify CERT [--ball N]       check one ball's certificate from its files alone
  python certify.py verify-all MANIFEST          every ball the manifest lists, then the atlas summary

See README.md for what a certificate proves and what the proof depends on.
"""
__version__ = '3.0.0'
