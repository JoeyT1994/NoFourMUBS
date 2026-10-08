import GraphKernel
set_option autoImplicit false
namespace Mub6.Numerical.GraphKernel
variable {V : Type} [Fintype V] [DecidableEq V]

/-- Assemble already checked children with explicit finite candidate sets.
The equalities prevent the exporter from dropping a candidate or a partner. -/
theorem checkPair_split_literal (O U : Graph V)
    (c p ct pt cs : Finset V) (v : V) (k : ℕ)
    (left right : PairCertificate V)
    (hv : v ∈ c)
    (hct : takeCandidates O c v = ct)
    (hpt : takePartners U p v = pt)
    (hcs : c.erase v = cs)
    (hl : checkPair O U ct pt k left = true)
    (hr : checkPair O U cs p (k+1) right = true) :
    checkPair O U c p (k+1) (.split v left right) = true := by
  simp only [checkPair, hct, hpt, hcs, hl, hr, decide_eq_true hv,
    Bool.and_self]

theorem checkClique_split_literal (O : Graph V)
    (c ct cs : Finset V) (v : V) (k : ℕ)
    (left right : CliqueCertificate V)
    (hv : v ∈ c)
    (hct : takeCandidates O c v = ct)
    (hcs : c.erase v = cs)
    (hl : checkClique O ct k left = true)
    (hr : checkClique O cs (k+1) right = true) :
    checkClique O c (k+1) (.split v left right) = true := by
  simp only [checkClique, hct, hcs, hl, hr, decide_eq_true hv, Bool.and_self]

#print axioms checkPair_split_literal
#print axioms checkClique_split_literal
end Mub6.Numerical.GraphKernel
