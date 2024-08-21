# Ring Proof Specification

This document describes a cryptographic scheme based on SNARKs (Succinct
Non-Interactive Arguments of Knowledge) that enables a prover to demonstrate
knowledge of a secret scalar $t$ and a secret index $k$ within a group of
public keys, where each public key is a point on an elliptic curve. The scheme
ensures that, when combined with a public elliptic curve point $H$, the relation
$R = PK_k + t·H$ is satisfied. It leverages elliptic curve operations,
a polynomial commitment scheme, and the Fiat-Shamir heuristic to achieve
non-interactivity and zero-knowledge properties.

## Acknowledgements

This specification is primarily derived from Sergey Vasilyev's original writeup
and reference implementation, as cited in the references.

## References

- These notes on hackmd: https://hackmd.io/@davxy/r1SVPqQc0.
- Sergey Vasilyev original writeup: https://hackmd.io/ulW5nFFpTwClHsD0kusJAA
- W3F reference implementation: https://github.com/w3f/ring-proof

