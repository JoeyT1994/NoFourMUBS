import GraphLiteralAssembly
set_option autoImplicit false
/-! DRAFT: new six-vector specialization of the preserved GraphKernel proof.
Fresh kernel replay, axiom/type audits and independent review are pending.
It does not prove that any exported phase cover encloses physical common rays. -/
namespace Mub6.Numerical.GraphKernel
variable {V : Type} [Fintype V] [DecidableEq V]

def HasPair6 (O U : Graph V) (c partners : Finset V) (needed : ℕ) : Prop :=
  ∃ s t, CliqueIn O c needed s ∧ CliqueIn O partners 6 t ∧ Disjoint s t ∧ Cross U s t

def checkPair6 (O U : Graph V) (c partners : Finset V) (needed : ℕ) : PairCertificate V → Bool
  | .first cert => checkClique O c needed cert
  | .cross cert => checkClique O partners 6 cert
  | .split v take skip => match needed with
      | 0 => false
      | k+1 => decide (v ∈ c) &&
          (checkPair6 O U (takeCandidates O c v) (takePartners U partners v) k take &&
           checkPair6 O U (c.erase v) partners (k+1) skip)

theorem checkPair6_sound (O U : Graph V) (c partners : Finset V) (needed : ℕ)
    (cert : PairCertificate V) (hc : checkPair6 O U c partners needed cert = true) :
    ¬ HasPair6 O U c partners needed := by
  induction cert generalizing c partners needed with
  | first cert =>
      rintro ⟨s, t, hs, ht, hd, hcross⟩
      exact checkClique_sound O c needed cert hc ⟨s, hs⟩
  | cross cert =>
      rintro ⟨s, t, hs, ht, hd, hcross⟩
      exact checkClique_sound O partners 6 cert hc ⟨t, ht⟩
  | split v take skip iht ihs =>
      cases needed with
      | zero => simp [checkPair6] at hc
      | succ k =>
          change (decide (v ∈ c) &&
            (checkPair6 O U (takeCandidates O c v) (takePartners U partners v) k take &&
             checkPair6 O U (c.erase v) partners (k+1) skip)) = true at hc
          simp only [Bool.and_eq_true, decide_eq_true_eq] at hc
          obtain ⟨_, htake, hskip⟩ := hc
          rintro ⟨s, t, hs, ht, hd, hcross⟩
          by_cases hv : v ∈ s
          · have htsub : t ⊆ takePartners U partners v := by
              intro b hb
              apply Finset.mem_filter.mpr
              refine ⟨Finset.mem_erase.mpr ⟨?_, ht.1 hb⟩, hcross v hv b hb⟩
              intro he
              exact (Finset.disjoint_left.mp hd hv) (by simpa [he] using hb)
            have hd' : Disjoint (s.erase v) t := by
              apply Finset.disjoint_left.mpr
              intro a ha hat
              exact Finset.disjoint_left.mp hd (Finset.mem_of_mem_erase ha) hat
            apply iht _ _ _ htake
            refine ⟨s.erase v, t, ⟨erase_take_subset hs.1 hv hs.2.2,
              erase_card_needed hv hs.2.1, clique_erase hs.2.2 v⟩,
              ⟨htsub, ht.2⟩, hd', ?_⟩
            intro a ha b hb
            exact hcross a (Finset.mem_of_mem_erase ha) b hb
          · apply ihs _ _ _ hskip
            exact ⟨s, t, ⟨skip_subset hs.1 hv, hs.2⟩, ht, hd, hcross⟩

theorem checkPair6_split_literal (O U : Graph V)
    (c p ct pt cs : Finset V) (v : V) (k : ℕ)
    (left right : PairCertificate V)
    (hv : v ∈ c)
    (hct : takeCandidates O c v = ct)
    (hpt : takePartners U p v = pt)
    (hcs : c.erase v = cs)
    (hl : checkPair6 O U ct pt k left = true)
    (hr : checkPair6 O U cs p (k+1) right = true) :
    checkPair6 O U c p (k+1) (.split v left right) = true := by
  simp only [checkPair6, hct, hpt, hcs, hl, hr, decide_eq_true hv,
    Bool.and_self]

#print axioms checkPair6_sound
#print axioms checkPair6_split_literal
end Mub6.Numerical.GraphKernel
