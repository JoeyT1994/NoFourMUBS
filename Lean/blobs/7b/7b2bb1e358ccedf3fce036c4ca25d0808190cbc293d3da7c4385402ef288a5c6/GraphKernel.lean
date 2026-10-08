import FormalCore
import Mathlib.Data.Finset.Card
import Mathlib.Data.Fintype.Card

/-! Executable proof-certificate checks, with kernel-checked soundness.
Unknown or absent branches cannot certify a refutation. No graph exclusion
is assumed as a free research premise. Physical bindings follow separately. -/
namespace Mub6.Numerical.GraphKernel

variable {V : Type} [Fintype V] [DecidableEq V]

abbrev Graph (V : Type) := V → V → Bool

def IsClique (O : Graph V) (s : Finset V) : Prop :=
  ∀ a ∈ s, ∀ b ∈ s, a ≠ b → O a b = true

def CliqueIn (O : Graph V) (c : Finset V) (k : ℕ) (s : Finset V) : Prop :=
  s ⊆ c ∧ k ≤ s.card ∧ IsClique O s

def HasClique (O : Graph V) (c : Finset V) (k : ℕ) : Prop :=
  ∃ s, CliqueIn O c k s

def takeCandidates (O : Graph V) (c : Finset V) (v : V) : Finset V :=
  (c.erase v).filter (fun w => O v w = true)

inductive CliqueCertificate (V : Type) where
  | size
  | color (count : ℕ) (colors : V → ℕ)
  | split (vertex : V) (take skip : CliqueCertificate V)

def checkClique (O : Graph V) (c : Finset V) (k : ℕ) : CliqueCertificate V → Bool
  | .size => decide (c.card < k)
  | .color count colors => decide (count < k ∧
      (∀ v ∈ c, colors v < count) ∧
      (∀ a ∈ c, ∀ b ∈ c, a ≠ b → O a b = true → colors a ≠ colors b))
  | .split v take skip => match k with
      | 0 => false
      | k+1 => decide (v ∈ c) &&
          (checkClique O (takeCandidates O c v) k take && checkClique O (c.erase v) (k+1) skip)

theorem clique_erase {O : Graph V} {s : Finset V} (h : IsClique O s) (v : V) :
    IsClique O (s.erase v) := by
  intro a ha b hb hab
  exact h a (Finset.mem_of_mem_erase ha) b (Finset.mem_of_mem_erase hb) hab

theorem erase_take_subset {O : Graph V} {c s : Finset V} {v : V}
    (hs : s ⊆ c) (hv : v ∈ s) (hcl : IsClique O s) :
    s.erase v ⊆ takeCandidates O c v := by
  intro a ha
  obtain ⟨hav, has⟩ := Finset.mem_erase.mp ha
  apply Finset.mem_filter.mpr
  exact ⟨Finset.mem_erase.mpr ⟨hav, hs has⟩, hcl v hv a has hav.symm⟩

theorem skip_subset {c s : Finset V} {v : V} (hs : s ⊆ c) (hv : v ∉ s) :
    s ⊆ c.erase v := by
  intro a ha
  apply Finset.mem_erase.mpr
  refine ⟨?_, hs ha⟩
  intro he
  apply hv
  simpa [he] using ha

theorem erase_card_needed {s : Finset V} {v : V} {k : ℕ}
    (hv : v ∈ s) (hk : k+1 ≤ s.card) : k ≤ (s.erase v).card := by
  have hc := Finset.card_erase_add_one hv
  rw [← hc] at hk
  exact Nat.le_of_succ_le_succ hk

theorem checkClique_sound (O : Graph V) (c : Finset V) (k : ℕ)
    (cert : CliqueCertificate V) (hc : checkClique O c k cert = true) :
    ¬ HasClique O c k := by
  induction cert generalizing c k with
  | size =>
      have hlt : c.card < k := of_decide_eq_true hc
      rintro ⟨s, hs, hk, _⟩
      exact (Nat.not_lt_of_ge (hk.trans (Finset.card_le_card hs))) hlt
  | color count colors =>
      have hcolor : count < k ∧ (∀ v ∈ c, colors v < count) ∧
          (∀ a ∈ c, ∀ b ∈ c, a ≠ b → O a b = true → colors a ≠ colors b) :=
        of_decide_eq_true hc
      rintro ⟨s, hs, hk, hcl⟩
      have hinj : Set.InjOn colors (↑s : Set V) := by
        intro a ha b hb he
        by_contra hne
        exact hcolor.2.2 a (hs ha) b (hs hb) hne (hcl a ha b hb hne) he
      have himage : s.image colors ⊆ Finset.range count := by
        intro n hn
        obtain ⟨a, ha, rfl⟩ := Finset.mem_image.mp hn
        exact Finset.mem_range.mpr (hcolor.2.1 a (hs ha))
      have hcard : s.card ≤ count := by
        have hi := Finset.card_le_card himage
        rw [Finset.card_image_iff.mpr hinj, Finset.card_range] at hi
        exact hi
      exact (Nat.not_lt_of_ge (hk.trans hcard)) hcolor.1
  | split v take skip iht ihs =>
      cases k with
      | zero => simp [checkClique] at hc
      | succ k =>
          change (decide (v ∈ c) && (checkClique O (takeCandidates O c v) k take &&
            checkClique O (c.erase v) (k+1) skip)) = true at hc
          obtain ⟨_, ht, hf⟩ := Bool.and_eq_true.mp hc |>.imp_right Bool.and_eq_true.mp
          rintro ⟨s, hs, hk, hcl⟩
          by_cases hv : v ∈ s
          · apply iht _ _ ht
            exact ⟨s.erase v, erase_take_subset hs hv hcl,
              erase_card_needed hv hk, clique_erase hcl v⟩
          · apply ihs _ _ hf
            exact ⟨s, skip_subset hs hv, hk, hcl⟩

def Cross (U : Graph V) (s t : Finset V) : Prop :=
  ∀ a ∈ s, ∀ b ∈ t, U a b = true

def HasPair (O U : Graph V) (c partners : Finset V) (needed : ℕ) : Prop :=
  ∃ s t, CliqueIn O c needed s ∧ CliqueIn O partners 5 t ∧ Disjoint s t ∧ Cross U s t

def takePartners (U : Graph V) (partners : Finset V) (v : V) : Finset V :=
  (partners.erase v).filter (fun w => U v w = true)

inductive PairCertificate (V : Type) where
  | first (cert : CliqueCertificate V)
  | cross (cert : CliqueCertificate V)
  | split (vertex : V) (take skip : PairCertificate V)

def checkPair (O U : Graph V) (c partners : Finset V) (needed : ℕ) : PairCertificate V → Bool
  | .first cert => checkClique O c needed cert
  | .cross cert => checkClique O partners 5 cert
  | .split v take skip => match needed with
      | 0 => false
      | k+1 => decide (v ∈ c) &&
          (checkPair O U (takeCandidates O c v) (takePartners U partners v) k take &&
           checkPair O U (c.erase v) partners (k+1) skip)

theorem checkPair_sound (O U : Graph V) (c partners : Finset V) (needed : ℕ)
    (cert : PairCertificate V) (hc : checkPair O U c partners needed cert = true) :
    ¬ HasPair O U c partners needed := by
  induction cert generalizing c partners needed with
  | first cert =>
      rintro ⟨s, t, hs, ht, hd, hcross⟩
      exact checkClique_sound O c needed cert hc ⟨s, hs⟩
  | cross cert =>
      rintro ⟨s, t, hs, ht, hd, hcross⟩
      exact checkClique_sound O partners 5 cert hc ⟨t, ht⟩
  | split v take skip iht ihs =>
      cases needed with
      | zero => simp [checkPair] at hc
      | succ k =>
          change (decide (v ∈ c) &&
            (checkPair O U (takeCandidates O c v) (takePartners U partners v) k take &&
             checkPair O U (c.erase v) partners (k+1) skip)) = true at hc
          obtain ⟨_, htake, hskip⟩ := Bool.and_eq_true.mp hc |>.imp_right Bool.and_eq_true.mp
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

#print axioms checkClique_sound
#print axioms checkPair_sound

end Mub6.Numerical.GraphKernel
