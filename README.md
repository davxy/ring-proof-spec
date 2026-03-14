# Ring Proof Specification

This document specifies the SNARK component originally designed as part of
the Ring VRF construction [1]. The scheme enables a prover to demonstrate
knowledge of a secret scalar $t$ and a secret index $k$ within a group of
public keys, where each public key is a point on an elliptic curve. The scheme
ensures that, when combined with a public elliptic curve point $H$, the relation
$R = PK_k + t \cdot H$ is satisfied. It leverages elliptic curve operations,
a polynomial commitment scheme, and the Fiat-Shamir heuristic to achieve
non-interactivity and zero-knowledge properties.

## Acknowledgements

This specification is primarily derived from Sergey Vasilyev's original writeup
and reference implementation, as cited in the references.

## References

1. J. Burdges, O. Ciobotaru, H. Kilinc Alper, A. Stewart, S. Vasilyev. "Ring Verifiable Random Functions and Zero-Knowledge Continuations", 2023. `https://eprint.iacr.org/2023/002`
3. Reference implementation: `https://github.com/paritytech/ring-proof`
4. fflonk (KZG variant): `https://crates.io/crates/fflonk`
5. ark-transcript (Fiat-Shamir): `https://crates.io/crates/ark-transcript`

