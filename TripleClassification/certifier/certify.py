#!/usr/bin/env python3
"""Verify (or produce) certificates of the classification of MUB triples in C^6, one seed ball at a time.

  python3 certify.py verify CERT            one ball's certificate: prints CLOSED and its scope (exit 0), or the refused nodes
  python3 certify.py verify-all MANIFEST    every ball listed in a manifest
  python3 certify.py close BALL OUT         search for a certificate
  python3 certify.py convert OLD NEW        rewrite an onetree.py certificate in this format (kept only if it verifies)
"""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from certifier.__main__ import main

if __name__ == '__main__': sys.exit(main())
