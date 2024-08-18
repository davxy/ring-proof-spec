# Ring Proof Specification

This document describes a cryptographic scheme based on SNARKs (Succinct
Non-Interactive Arguments of Knowledge) that allows a prover to demonstrate
knowledge of a secret value $t$ and its associated public key $PK_k$ within
a group of public keys, without revealing which specific key is involved.
Importantly, the secret $t$ is not algebraically linked to the public key $PK_k$​;
instead, it is used in combination with a known point $H$ on an elliptic curve to
construct a proof of the relation $R = PK_k+t·H$. The scheme employs elliptic
curve operations, a polynomial commitment scheme, and the Fiat-Shamir heuristic
to ensure the proof is both non-interactive and zero-knowledge.

## Acknowledgements

This specification is primarily derived from Sergey Vasilyev's original writeup
and reference implementation, as cited in the references.

## References

- These notes on hackmd: https://hackmd.io/@davxy/r1SVPqQc0.
- Sergey Vasilyev original writeup: https://hackmd.io/ulW5nFFpTwClHsD0kusJAA
- W3F reference implementation: https://github.com/w3f/ring-proof

