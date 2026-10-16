import KernelAtlas.Clique

/-!
# The two-clique search on bitsets (Stage C, the clique step for large graphs)

`Clique.lean` filters candidate *lists*; for graphs whose search runs to millions of calls (some of the hard
Records), each call costs a filter over a list of labels and the kernel's cache grows by the filtered lists.  Here
candidate and accumulator sets are natural numbers (bit `j` set iff label `j` is in the set), so one call is a few
GMP operations:

* the lowest element of `x` is removed by `x &&& (x − 1)` (`lowB x = x ^^^ (x &&& (x − 1))` is `2^j`, `j` the
  lowest element; `low_bits`);
* the graph rows are looked up by that power of two, `rowT (2^j) = (O-row of j, U-row of j)`: the graph is *defined*
  through `rowT` (`OT`, `UT`), so no index has to be recovered;
* `popGE m x` (at least `m` elements, by clearing `m` lowest bits) prunes candidate sets that are too small, and
  accumulators that cannot hold the second clique.

`cbT_complete`: a set of `need` candidates, pairwise O, is found.  `noTwoT_sound`: the whole search.
`noTwo_of_chunks`: the search split into kernel decisions by the smallest one or two elements of the first clique
(one decision for the whole search exhausts memory for the largest graphs).
-/

open Hadamard6 NoFourMUBs.StageC

namespace NoFourMUBs.KernelAtlas

/-! ### Bits -/

/-- At least `m` elements in `x` (clearing the lowest element `m` times). -/
def popGE (m : ℕ) : ℕ → Bool :=
  Nat.rec (motive := fun _ => ℕ → Bool) (fun _ => true)
    (fun _ ih x => !(Nat.beq x 0) && ih (Nat.land x (Nat.sub x 1))) m

/-- The lowest element `2^j` of `x ≠ 0`. -/
def lowB (x : ℕ) : ℕ := Nat.xor x (Nat.land x (Nat.sub x 1))

lemma tb_land (x y i : ℕ) : (Nat.land x y).testBit i = (x.testBit i && y.testBit i) := Nat.testBit_land x y i

lemma tb_xor (x y i : ℕ) : (Nat.xor x y).testBit i = (x.testBit i ^^ y.testBit i) := Nat.testBit_xor x y i

lemma beq0 {x : ℕ} (h : x ≠ 0) : Nat.beq x 0 = false := by
  cases x with
  | zero => exact absurd rfl h
  | succ n => rfl

/-- `x &&& (x − 1)` is `x` without its lowest element `j`. -/
theorem low_bits : ∀ x : ℕ, x ≠ 0 → ∃ j, x.testBit j = true ∧
    ∀ i, (Nat.land x (Nat.sub x 1)).testBit i = (x.testBit i && decide (i ≠ j)) := by
  intro x
  induction x using Nat.strong_induction_on with
  | _ x ih =>
    intro hx
    rcases Nat.even_or_odd x with ⟨y, rfl⟩ | ⟨y, rfl⟩
    · -- x = y + y = 2y, y ≠ 0
      have hy : y ≠ 0 := by omega
      obtain ⟨j, hj, hb⟩ := ih y (by omega) hy
      refine ⟨j + 1, ?_, ?_⟩
      · rw [show y + y = 2 * y by ring, Nat.testBit_succ, Nat.mul_div_cancel_left _ (by norm_num)]; exact hj
      · intro i
        have hsub : Nat.sub (y + y) 1 = 2 * (y - 1) + 1 := by show y + y - 1 = _; omega
        rcases i with _ | i
        · simp only [Nat.land_comm, tb_land, Nat.testBit_zero]
          rw [show y + y = 2 * y by ring]; simp
        · have hl : Nat.land (y + y) (Nat.sub (y + y) 1) = 2 * Nat.land y (Nat.sub y 1) := by
            apply Nat.eq_of_testBit_eq; intro k
            rw [hsub, show y + y = 2 * y by ring]
            rcases k with _ | k
            · simp [tb_land, Nat.testBit_zero]
            · rw [tb_land, Nat.testBit_succ, Nat.testBit_succ, Nat.testBit_succ,
                Nat.mul_div_cancel_left _ (by norm_num), Nat.mul_div_cancel_left _ (by norm_num),
                show (2 * (y - 1) + 1) / 2 = y - 1 by omega]
              rw [tb_land]; rfl
          rw [hl, Nat.testBit_succ, Nat.mul_div_cancel_left _ (by norm_num), hb i,
            show y + y = 2 * y by ring, Nat.testBit_succ, Nat.mul_div_cancel_left _ (by norm_num)]
          by_cases h : i = j <;> simp [h]
    · -- x = 2y + 1: the lowest element is 0
      refine ⟨0, by simp [Nat.testBit_zero], ?_⟩
      intro i
      have : Nat.sub (2 * y + 1) 1 = 2 * y := by show 2 * y + 1 - 1 = _; omega
      rw [this, tb_land]
      rcases i with _ | i
      · simp [Nat.testBit_zero]
      · rw [Nat.testBit_succ, Nat.testBit_succ, Nat.mul_div_cancel_left _ (by norm_num),
          show (2 * y + 1) / 2 = y by omega]
        simp

/-- `lowB x = 2^j` and `x ^^^ lowB x = x &&& (x − 1)` (the bits of `x` without `j`). -/
theorem lowB_spec {x : ℕ} (hx : x ≠ 0) : ∃ j, x.testBit j = true ∧ lowB x = 2 ^ j ∧
    ∀ i, (Nat.xor x (lowB x)).testBit i = (x.testBit i && decide (i ≠ j)) := by
  obtain ⟨j, hj, hb⟩ := low_bits x hx
  have hlow : lowB x = 2 ^ j := by
    apply Nat.eq_of_testBit_eq; intro i
    show (Nat.xor x (Nat.land x (Nat.sub x 1))).testBit i = _
    rw [Nat.testBit_two_pow]
    have : (Nat.xor x (Nat.land x (Nat.sub x 1))).testBit i = (x.testBit i ^^ (Nat.land x (Nat.sub x 1)).testBit i) :=
      Nat.testBit_xor x _ i
    rw [this, hb i]
    by_cases h : i = j
    · subst h; simp [hj]
    · cases x.testBit i <;> simp [h, Ne.symm h]
  refine ⟨j, hj, hlow, fun i => ?_⟩
  have : (Nat.xor x (lowB x)).testBit i = (x.testBit i ^^ (lowB x).testBit i) := Nat.testBit_xor x _ i
  rw [this, hlow, Nat.testBit_two_pow]
  by_cases h : i = j
  · subst h; simp [hj]
  · cases x.testBit i <;> simp [h, Ne.symm h]

lemma ne_zero_of_testBit {x i : ℕ} (h : x.testBit i = true) : x ≠ 0 := by
  rintro rfl; simp at h

theorem popGE_of_card : ∀ (m x : ℕ) (T : Finset ℕ), (∀ t ∈ T, x.testBit t = true) → m ≤ T.card →
    popGE m x = true := by
  intro m
  induction m with
  | zero => intro _ _ _ _; rfl
  | succ m ih =>
    intro x T hT hm
    obtain ⟨t, ht⟩ : T.Nonempty := Finset.card_pos.mp (by omega)
    have hx : x ≠ 0 := ne_zero_of_testBit (hT t ht)
    obtain ⟨j, -, hb⟩ := low_bits x hx
    show (!(Nat.beq x 0) && popGE m (Nat.land x (Nat.sub x 1))) = true
    rw [Bool.and_eq_true]
    refine ⟨by simp [beq0 hx], ih _ (T.erase j) ?_ ?_⟩
    · intro a ha
      obtain ⟨hne, haT⟩ := Finset.mem_erase.mp ha
      rw [hb a]; simp [hT a haT, hne]
    · have := Finset.pred_card_le_card_erase (s := T) (a := j); omega

/-! ### The search -/

/-- O-row and U-row of label `j`, looked up by `2^j`. -/
def OT (rowT : ℕ → ℕ × ℕ) (a b : ℕ) : Prop := ((rowT (2 ^ a)).1).testBit b = true

def UT (rowT : ℕ → ℕ × ℕ) (a b : ℕ) : Prop := ((rowT (2 ^ a)).2).testBit b = true

/-- Include/exclude clique search on bitsets: is there a set of `need` elements of `cand`, pairwise O, whose
U-common part of `acc` makes `k` succeed?  Accumulators with fewer than `m` elements are pruned.  Out of fuel the
answer is `true` ("maybe found"), the safe side. -/
def cbT (rowT : ℕ → ℕ × ℕ) (m : ℕ) (k : ℕ → Bool) (f : ℕ) : ℕ → ℕ → ℕ → Bool :=
  Nat.rec (motive := fun _ => ℕ → ℕ → ℕ → Bool)
    (fun cand need acc => cond (Nat.beq need 0) (k acc) (!(Nat.beq cand 0)))
    (fun _ ih cand need acc => cond (Nat.beq need 0) (k acc)
      (cond (Nat.beq cand 0) false
        (cond (popGE need cand && popGE m acc)
          (ih (Nat.land (Nat.xor cand (lowB cand)) (rowT (lowB cand)).1) (Nat.sub need 1)
              (Nat.land acc (rowT (lowB cand)).2) ||
            ih (Nat.xor cand (lowB cand)) need acc) false))) f

theorem cbT_complete (rowT : ℕ → ℕ × ℕ) (m : ℕ) (k : ℕ → Bool) :
    ∀ (f cand need acc : ℕ) (S : Finset ℕ), (∀ a ∈ S, cand.testBit a = true) → S.card = need →
      (∀ a ∈ S, ∀ b ∈ S, a ≠ b → OT rowT a b) →
      (∃ T : Finset ℕ, m ≤ T.card ∧ ∀ t ∈ T, acc.testBit t = true ∧ ∀ a ∈ S, UT rowT a t) →
      (∀ acc' : ℕ, (∀ x, acc.testBit x = true → (∀ a ∈ S, UT rowT a x) → acc'.testBit x = true) →
        k acc' = true) →
      cbT rowT m k f cand need acc = true := by
  intro f
  induction f with
  | zero =>
    intro cand need acc S hS hcard _ _ hk
    show cond (Nat.beq need 0) (k acc) (!(Nat.beq cand 0)) = true
    rcases Nat.eq_zero_or_pos need with h0 | hpos
    · subst h0; exact hk acc fun x hx _ => hx
    · have hne : need ≠ 0 := by omega
      obtain ⟨a, ha⟩ : S.Nonempty := Finset.card_pos.mp (by omega)
      have hc := ne_zero_of_testBit (hS a ha)
      simp [beq0 hne, beq0 hc]
  | succ f ih =>
    intro cand need acc S hS hcard hpair hT hk
    show cond (Nat.beq need 0) (k acc) (cond (Nat.beq cand 0) false
      (cond (popGE need cand && popGE m acc)
        (cbT rowT m k f (Nat.land (Nat.xor cand (lowB cand)) (rowT (lowB cand)).1) (Nat.sub need 1)
            (Nat.land acc (rowT (lowB cand)).2) ||
          cbT rowT m k f (Nat.xor cand (lowB cand)) need acc) false)) = true
    rcases Nat.eq_zero_or_pos need with h0 | hpos
    · subst h0; simp only [Nat.beq_refl, cond_true]; exact hk acc fun x hx _ => hx
    have hne : need ≠ 0 := by omega
    obtain ⟨a0, ha0⟩ : S.Nonempty := Finset.card_pos.mp (by omega)
    have hc := ne_zero_of_testBit (hS a0 ha0)
    obtain ⟨T, hmT, hTacc⟩ := hT
    have hp1 : popGE need cand = true := popGE_of_card need cand S hS hcard.ge
    have hp2 : popGE m acc = true := popGE_of_card m acc T (fun t ht => (hTacc t ht).1) hmT
    have hb0 : Nat.beq need 0 = false := beq0 hne
    have hc0 : Nat.beq cand 0 = false := beq0 hc
    rw [hb0, hc0, hp1, hp2]
    simp only [cond_false, Bool.and_self, cond_true, Bool.or_eq_true]
    obtain ⟨j, hj, hlow, hxor⟩ := lowB_spec hc
    rw [hlow] at hxor ⊢
    by_cases hjS : j ∈ S
    · left
      refine ih _ _ _ (S.erase j) ?_ ?_ ?_ ⟨T, hmT, ?_⟩ ?_
      · intro a ha
        obtain ⟨hne', haS⟩ := Finset.mem_erase.mp ha
        rw [tb_land, hxor a]
        simp only [hS a haS, ne_eq, hne', not_false_eq_true, decide_true, Bool.and_self, Bool.true_and]
        exact hpair j hjS a haS (Ne.symm hne')
      · rw [Finset.card_erase_of_mem hjS, hcard]; rfl
      · intro a ha b hb hab
        exact hpair a (Finset.mem_of_mem_erase ha) b (Finset.mem_of_mem_erase hb) hab
      · intro t ht
        refine ⟨?_, fun a ha => (hTacc t ht).2 a (Finset.mem_of_mem_erase ha)⟩
        rw [tb_land, (hTacc t ht).1, Bool.true_and]
        exact (hTacc t ht).2 j hjS
      · intro acc' hacc'
        refine hk acc' fun x hx hall => hacc' x ?_ fun a ha => hall a (Finset.mem_of_mem_erase ha)
        rw [tb_land, hx, Bool.true_and]; exact hall j hjS
    · right
      refine ih _ _ _ S ?_ hcard hpair ⟨T, hmT, hTacc⟩ hk
      intro a ha
      rw [hxor a]
      have : a ≠ j := fun h => hjS (h ▸ ha)
      simp [hS a ha, this]

/-! ### Two cliques -/

/-- The second search: any O-6-clique in the accumulator. -/
def k2T (rowT : ℕ → ℕ × ℕ) (n : ℕ) : ℕ → Bool := fun acc => cbT rowT 0 (fun _ => true) n acc 6 0

/-- All labels `0, …, n−1`. -/
def fullT (n : ℕ) : ℕ := Nat.sub (Nat.shiftLeft 1 n) 1

/-- Labels `j + 1, …, n − 1`. -/
def aboveT (n j : ℕ) : ℕ := Nat.shiftLeft (Nat.shiftRight (fullT n) (j + 1)) (j + 1)

/-- The search below the smallest element `j` of the first clique. -/
def br1T (rowT : ℕ → ℕ × ℕ) (n j : ℕ) : Bool :=
  cbT rowT 6 (k2T rowT n) n (Nat.land (aboveT n j) (rowT (Nat.shiftLeft 1 j)).1) 5
    (Nat.land (fullT n) (rowT (Nat.shiftLeft 1 j)).2)

/-- The search below the two smallest elements `j < j₂` of the first clique. -/
def br2T (rowT : ℕ → ℕ × ℕ) (n j j₂ : ℕ) : Bool :=
  ((rowT (Nat.shiftLeft 1 j)).1).testBit j₂ &&
    cbT rowT 6 (k2T rowT n) n
      (Nat.land (Nat.land (aboveT n j₂) (rowT (Nat.shiftLeft 1 j)).1) (rowT (Nat.shiftLeft 1 j₂)).1) 4
      (Nat.land (Nat.land (fullT n) (rowT (Nat.shiftLeft 1 j)).2) (rowT (Nat.shiftLeft 1 j₂)).2)

lemma fullT_bit {n i : ℕ} (h : i < n) : (fullT n).testBit i = true := by
  show (Nat.shiftLeft 1 n - 1).testBit i = true
  rw [show Nat.shiftLeft 1 n = 2 ^ n by simp [Nat.shiftLeft_eq], Nat.testBit_two_pow_sub_one]; simpa using h

lemma aboveT_bit {n j i : ℕ} (h : i < n) (hj : j < i) : (aboveT n j).testBit i = true := by
  show (Nat.shiftLeft (Nat.shiftRight (fullT n) (j + 1)) (j + 1)).testBit i = true
  rw [show Nat.shiftLeft (Nat.shiftRight (fullT n) (j + 1)) (j + 1) = ((fullT n) >>> (j + 1)) <<< (j + 1) from rfl,
    Nat.testBit_shiftLeft, Nat.testBit_shiftRight, show j + 1 + (i - (j + 1)) = i by omega, fullT_bit h]
  simp; omega

lemma shift_pow (j : ℕ) : Nat.shiftLeft 1 j = 2 ^ j := by simp [Nat.shiftLeft_eq]

/-- The second clique is found in any accumulator containing it. -/
lemma k2T_complete (rowT : ℕ → ℕ × ℕ) {n : ℕ} (SB : Finset ℕ) (hcard : SB.card = 6)
    (hpair : ∀ a ∈ SB, ∀ b ∈ SB, a ≠ b → OT rowT a b) (acc : ℕ) (hacc : ∀ b ∈ SB, acc.testBit b = true) :
    k2T rowT n acc = true :=
  cbT_complete rowT 0 _ n acc 6 0 SB hacc hcard hpair ⟨∅, le_rfl, by simp⟩ fun _ _ => rfl

/-- **The chunked clique step.**  For every label `j`, either the search below `j` fails, or the search below
`j < j₂` fails for every `j₂`. -/
theorem noTwo_of_chunks (rowT : ℕ → ℕ × ℕ) (n : ℕ)
    (h : ∀ j < n, br1T rowT n j = false ∨ ∀ j₂ < n, j < j₂ → br2T rowT n j j₂ = false) :
    NoTwoCliques (fun b c : Fin n => OT rowT b c) (fun b c : Fin n => UT rowT b c) := by
  rintro ⟨A, B, hA, hB, hOA, hOB, hU⟩
  set SA := Finset.univ.image fun i => (A i : ℕ)
  set SB := Finset.univ.image fun i => (B i : ℕ)
  have hSA : SA.card = 6 := card_image_I6 hA
  have hSB : SB.card = 6 := card_image_I6 hB
  have hlt : ∀ a ∈ SA, a < n := by
    intro a ha; obtain ⟨i, -, rfl⟩ := Finset.mem_image.mp ha; exact (A i).isLt
  have hltB : ∀ b ∈ SB, b < n := by
    intro b hb; obtain ⟨i, -, rfl⟩ := Finset.mem_image.mp hb; exact (B i).isLt
  have hpA : ∀ a ∈ SA, ∀ b ∈ SA, a ≠ b → OT rowT a b := by
    intro a ha b hb hab
    obtain ⟨i, -, rfl⟩ := Finset.mem_image.mp ha
    obtain ⟨j, -, rfl⟩ := Finset.mem_image.mp hb
    exact hOA i j fun hij => hab (hij ▸ rfl)
  have hpB : ∀ a ∈ SB, ∀ b ∈ SB, a ≠ b → OT rowT a b := by
    intro a ha b hb hab
    obtain ⟨i, -, rfl⟩ := Finset.mem_image.mp ha
    obtain ⟨j, -, rfl⟩ := Finset.mem_image.mp hb
    exact hOB i j fun hij => hab (hij ▸ rfl)
  have hUAB : ∀ a ∈ SA, ∀ b ∈ SB, UT rowT a b := by
    intro a ha b hb
    obtain ⟨i, -, rfl⟩ := Finset.mem_image.mp ha
    obtain ⟨j, -, rfl⟩ := Finset.mem_image.mp hb
    exact hU i j
  have hne : SA.Nonempty := Finset.card_pos.mp (by omega)
  set j := SA.min' hne
  have hjA : j ∈ SA := Finset.min'_mem _ _
  have hjmin : ∀ a ∈ SA, j ≤ a := fun a ha => Finset.min'_le _ _ ha
  have hk : ∀ acc' : ℕ, (∀ b ∈ SB, acc'.testBit b = true) → k2T rowT n acc' = true :=
    k2T_complete rowT SB hSB hpB
  rcases h j (hlt j hjA) with h1 | h2
  · -- the search below `j` finds `SA \ {j}`
    have : br1T rowT n j = true := by
      unfold br1T; rw [shift_pow]
      refine cbT_complete rowT 6 _ n _ 5 _ (SA.erase j) ?_ ?_ ?_ ⟨SB, hSB.ge, ?_⟩ ?_
      · intro a ha
        obtain ⟨hne', haS⟩ := Finset.mem_erase.mp ha
        rw [tb_land, aboveT_bit (hlt a haS) (lt_of_le_of_ne (hjmin a haS) (Ne.symm hne'))]
        exact hpA j hjA a haS (Ne.symm hne')
      · rw [Finset.card_erase_of_mem hjA, hSA]
      · intro a ha b hb hab
        exact hpA a (Finset.mem_of_mem_erase ha) b (Finset.mem_of_mem_erase hb) hab
      · intro t ht
        refine ⟨?_, fun a ha => hUAB a (Finset.mem_of_mem_erase ha) t ht⟩
        rw [tb_land, fullT_bit (hltB t ht)]; exact hUAB j hjA t ht
      · intro acc' hacc'
        refine hk acc' fun b hb => hacc' b ?_ fun a ha => hUAB a (Finset.mem_of_mem_erase ha) b hb
        rw [tb_land, fullT_bit (hltB b hb)]; exact hUAB j hjA b hb
    rw [h1] at this; exact Bool.false_ne_true this
  · -- the search below `j < j₂` finds `SA \ {j, j₂}`
    have hne2 : (SA.erase j).Nonempty := Finset.card_pos.mp (by rw [Finset.card_erase_of_mem hjA]; omega)
    set j₂ := (SA.erase j).min' hne2
    have hj2E : j₂ ∈ SA.erase j := Finset.min'_mem _ _
    obtain ⟨hj2j, hj2A⟩ := Finset.mem_erase.mp hj2E
    have hj2min : ∀ a ∈ SA.erase j, j₂ ≤ a := fun a ha => Finset.min'_le _ _ ha
    have hjj2 : j < j₂ := lt_of_le_of_ne (hjmin j₂ hj2A) (Ne.symm hj2j)
    have : br2T rowT n j j₂ = true := by
      unfold br2T; rw [shift_pow, shift_pow, Bool.and_eq_true]
      refine ⟨hpA j hjA j₂ hj2A (Ne.symm hj2j), ?_⟩
      refine cbT_complete rowT 6 _ n _ 4 _ ((SA.erase j).erase j₂) ?_ ?_ ?_ ⟨SB, hSB.ge, ?_⟩ ?_
      · intro a ha
        obtain ⟨hne2', haE⟩ := Finset.mem_erase.mp ha
        obtain ⟨hne1', haS⟩ := Finset.mem_erase.mp haE
        rw [tb_land, tb_land,
          aboveT_bit (hlt a haS) (lt_of_le_of_ne (hj2min a haE) (Ne.symm hne2'))]
        simp only [Bool.true_and, Bool.and_eq_true]
        exact ⟨hpA j hjA a haS (Ne.symm hne1'), hpA j₂ hj2A a haS (Ne.symm hne2')⟩
      · rw [Finset.card_erase_of_mem hj2E, Finset.card_erase_of_mem hjA, hSA]
      · intro a ha b hb hab
        exact hpA a (Finset.mem_of_mem_erase (Finset.mem_of_mem_erase ha))
          b (Finset.mem_of_mem_erase (Finset.mem_of_mem_erase hb)) hab
      · intro t ht
        refine ⟨?_, fun a ha => hUAB a (Finset.mem_of_mem_erase (Finset.mem_of_mem_erase ha)) t ht⟩
        rw [tb_land, tb_land, fullT_bit (hltB t ht)]
        simp only [Bool.true_and, Bool.and_eq_true]
        exact ⟨hUAB j hjA t ht, hUAB j₂ hj2A t ht⟩
      · intro acc' hacc'
        refine hk acc' fun b hb => hacc' b ?_ fun a ha =>
          hUAB a (Finset.mem_of_mem_erase (Finset.mem_of_mem_erase ha)) b hb
        rw [tb_land, tb_land, fullT_bit (hltB b hb)]
        simp only [Bool.true_and, Bool.and_eq_true]
        exact ⟨hUAB j hjA b hb, hUAB j₂ hj2A b hb⟩
    rw [h2 j₂ (hlt j₂ hj2A) hjj2] at this; exact Bool.false_ne_true this

end NoFourMUBs.KernelAtlas
