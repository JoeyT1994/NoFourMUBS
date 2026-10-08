import GraphKernel

/-! Additive generalization of the resident graph-certificate consumer.
Both clique sizes are explicit. The original five-partner checker is preserved.
No concrete finite graph or successful certificate is postulated here. -/
set_option autoImplicit false
namespace Mub6.Numerical.GraphKernel

variable {V : Type} [Fintype V] [DecidableEq V]

def HasPairSized (O U : Graph V) (c partners : Finset V)
    (needed partnerNeeded : ℕ) : Prop :=
  ∃ s t, CliqueIn O c needed s ∧ CliqueIn O partners partnerNeeded t ∧
    Disjoint s t ∧ Cross U s t

def checkPairSized (O U : Graph V) (c partners : Finset V)
    (needed partnerNeeded : ℕ) : PairCertificate V → Bool
  | .first cert => checkClique O c needed cert
  | .cross cert => checkClique O partners partnerNeeded cert
  | .split v take skip => match needed with
      | 0 => false
      | k+1 => decide (v ∈ c) &&
          (checkPairSized O U (takeCandidates O c v) (takePartners U partners v)
            k partnerNeeded take &&
           checkPairSized O U (c.erase v) partners (k+1) partnerNeeded skip)

/-- Every take and skip branch is checked; the certificate cannot omit an
unknown partner or a possible first-clique branch. -/
theorem checkPairSized_sound (O U : Graph V) (c partners : Finset V)
    (needed partnerNeeded : ℕ) (cert : PairCertificate V)
    (hc : checkPairSized O U c partners needed partnerNeeded cert=true) :
    ¬HasPairSized O U c partners needed partnerNeeded := by
  induction cert generalizing c partners needed with
  | first cert =>
      rintro ⟨s,t,hs,ht,hd,hcross⟩
      exact checkClique_sound O c needed cert hc ⟨s,hs⟩
  | cross cert =>
      rintro ⟨s,t,hs,ht,hd,hcross⟩
      exact checkClique_sound O partners partnerNeeded cert hc ⟨t,ht⟩
  | split v take skip iht ihs =>
      cases needed with
      | zero => simp [checkPairSized] at hc
      | succ k =>
          change (decide (v∈c) &&
            (checkPairSized O U (takeCandidates O c v) (takePartners U partners v)
              k partnerNeeded take &&
             checkPairSized O U (c.erase v) partners (k+1) partnerNeeded skip))=true at hc
          simp only [Bool.and_eq_true,decide_eq_true_eq] at hc
          obtain ⟨_,htake,hskip⟩ := hc
          rintro ⟨s,t,hs,ht,hd,hcross⟩
          by_cases hv : v∈s
          · have htsub : t⊆takePartners U partners v := by
              intro b hb
              apply Finset.mem_filter.mpr
              refine ⟨Finset.mem_erase.mpr ⟨?_,ht.1 hb⟩,hcross v hv b hb⟩
              intro he
              exact (Finset.disjoint_left.mp hd hv) (by simpa [he] using hb)
            have hd' : Disjoint (s.erase v) t := by
              apply Finset.disjoint_left.mpr
              intro a ha hat
              exact Finset.disjoint_left.mp hd (Finset.mem_of_mem_erase ha) hat
            apply iht _ _ _ htake
            refine ⟨s.erase v,t,⟨erase_take_subset hs.1 hv hs.2.2,
              erase_card_needed hv hs.2.1,clique_erase hs.2.2 v⟩,
              ⟨htsub,ht.2⟩,hd',?_⟩
            intro a ha b hb
            exact hcross a (Finset.mem_of_mem_erase ha) b hb
          · apply ihs _ _ _ hskip
            exact ⟨s,t,⟨skip_subset hs.1 hv,hs.2⟩,ht,hd,hcross⟩

theorem hasPairSized_five_iff (O U : Graph V) (c partners : Finset V)
    (needed : ℕ) : HasPairSized O U c partners needed 5 ↔ HasPair O U c partners needed :=
  Iff.rfl

theorem checkPairSized_five_eq (O U : Graph V) (c partners : Finset V)
    (needed : ℕ) (cert : PairCertificate V) :
    checkPairSized O U c partners needed 5 cert=checkPair O U c partners needed cert := by
  induction cert generalizing c partners needed with
  | first cert => rfl
  | cross cert => rfl
  | split v take skip iht ihs =>
      cases needed <;> simp only [checkPairSized,checkPair,iht,ihs]

/-- Checked literal candidate sets permit chunked exporters without trusting
their claim that a candidate list is complete. -/
theorem checkPairSized_split_literal (O U : Graph V)
    (c partners ct pt cs : Finset V) (v : V) (k partnerNeeded : ℕ)
    (left right : PairCertificate V) (hv : v∈c)
    (hct : takeCandidates O c v=ct) (hpt : takePartners U partners v=pt)
    (hcs : c.erase v=cs)
    (hl : checkPairSized O U ct pt k partnerNeeded left=true)
    (hr : checkPairSized O U cs partners (k+1) partnerNeeded right=true) :
    checkPairSized O U c partners (k+1) partnerNeeded (.split v left right)=true := by
  simp only [checkPairSized,hct,hpt,hcs,hl,hr,decide_eq_true hv,Bool.and_self]

theorem checkPairSized_six_sound (O U : Graph V) (cert : PairCertificate V)
    (hc : checkPairSized O U Finset.univ Finset.univ 6 6 cert=true) :
    ¬HasPairSized O U Finset.univ Finset.univ 6 6 :=
  checkPairSized_sound O U Finset.univ Finset.univ 6 6 cert hc

#print axioms checkPairSized_sound
#print axioms hasPairSized_five_iff
#print axioms checkPairSized_five_eq
#print axioms checkPairSized_split_literal
#print axioms checkPairSized_six_sound
end Mub6.Numerical.GraphKernel
