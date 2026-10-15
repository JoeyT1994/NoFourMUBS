import NoFourMUBs.StageC.Assembly

/-!
# The two-clique search in the kernel (Stage C, the clique step)

Labels are indices `0, …, n−1`; the O and U graphs are given by row bitsets `oR i`, `uR i` (bit `j` set iff the
edge `(i, j)` may be present).  `cl` is the include/exclude clique search with an accumulator: choosing `j`
restricts the candidates to the O-neighbours of `j` and the accumulator to the U-neighbours of `j`; when `need`
reaches `0` the continuation `k` runs on the accumulator.  `noTwo` runs it for two disjoint O-6-cliques with all
cross pairs in U, which is the pattern `NoTwoCliques` forbids.  The fuel only has to bound the candidate length
(an empty candidate list is checked first); out of fuel the search answers `true` ("maybe found"), the safe side.

`cl_complete`: a set of `need` candidates, pairwise O, is found (as long as the continuation succeeds on every
accumulator that keeps the common U-neighbours).  `noTwo_sound`: `noTwo n oR uR = true` gives `NoTwoCliques`.
-/

open Hadamard6 NoFourMUBs.StageC

namespace NoFourMUBs.KernelAtlas

/-- Include/exclude clique search: is there a set of `need` candidates, pairwise O, whose accumulated U-common
neighbourhood makes `k` succeed? -/
def cl (oR uR : ℕ → ℕ) (k : List ℕ → Bool) : ℕ → List ℕ → ℕ → List ℕ → Bool
  | _, _, 0, acc => k acc
  | _, [], _ + 1, _ => false
  | 0, _ :: _, _ + 1, _ => true
  | f + 1, j :: rest, need + 1, acc =>
      cl oR uR k f (rest.filter fun x => (oR j).testBit x) need (acc.filter fun x => (uR j).testBit x) ||
        cl oR uR k f rest (need + 1) acc

theorem cl_complete (oR uR : ℕ → ℕ) (k : List ℕ → Bool) :
    ∀ (f : ℕ) (cand : List ℕ) (need : ℕ) (acc : List ℕ) (S : Finset ℕ), cand.length ≤ f →
      (∀ a ∈ S, a ∈ cand) → S.card = need → (∀ a ∈ S, ∀ b ∈ S, a ≠ b → (oR a).testBit b = true) →
      (∀ acc' : List ℕ, acc'.length ≤ acc.length →
        (∀ x ∈ acc, (∀ a ∈ S, (uR a).testBit x = true) → x ∈ acc') → k acc' = true) →
      cl oR uR k f cand need acc = true := by
  intro f
  induction f with
  | zero =>
    intro cand need acc S _ hmem hcard _ hk
    cases need with
    | zero => simp only [cl]; exact hk acc le_rfl fun x hx _ => hx
    | succ need =>
      cases cand with
      | nil =>
        exfalso
        have : S = ∅ := Finset.eq_empty_of_forall_notMem fun a ha => by simpa using hmem a ha
        rw [this, Finset.card_empty] at hcard; omega
      | cons j rest => simp only [cl]
  | succ f ih =>
    intro cand need acc S hlen hmem hcard hpair hk
    cases need with
    | zero => simp only [cl]; exact hk acc le_rfl fun x hx _ => hx
    | succ need =>
      cases cand with
      | nil =>
        exfalso
        have : S = ∅ := Finset.eq_empty_of_forall_notMem fun a ha => by simpa using hmem a ha
        rw [this, Finset.card_empty] at hcard; omega
      | cons j rest =>
        simp only [cl, Bool.or_eq_true]
        have hlen' : rest.length ≤ f := by simp only [List.length_cons] at hlen; omega
        by_cases hj : j ∈ S
        · left
          refine ih _ need _ (S.erase j) ((List.length_filter_le _ _).trans hlen') ?_ ?_ ?_ ?_
          · intro a ha
            obtain ⟨hne, haS⟩ := Finset.mem_erase.mp ha
            have : a ∈ j :: rest := hmem a haS
            simp only [List.mem_cons] at this
            refine List.mem_filter.mpr ⟨this.resolve_left hne, hpair j hj a haS (Ne.symm hne)⟩
          · rw [Finset.card_erase_of_mem hj, hcard]; rfl
          · intro a ha b hb hab
            exact hpair a (Finset.mem_of_mem_erase ha) b (Finset.mem_of_mem_erase hb) hab
          · intro acc' hl hacc
            refine hk acc' (hl.trans (List.length_filter_le _ _)) fun x hx hall => ?_
            refine hacc x (List.mem_filter.mpr ⟨hx, hall j hj⟩) fun a ha => hall a (Finset.mem_of_mem_erase ha)
        · right
          refine ih rest (need + 1) acc S hlen' ?_ hcard hpair hk
          intro a ha
          have : a ∈ j :: rest := hmem a ha
          simp only [List.mem_cons] at this
          exact this.resolve_left fun h => hj (h ▸ ha)

/-- No two disjoint O-6-cliques with all cross pairs in U, among labels `0, …, n−1`. -/
def noTwo (n : ℕ) (oR uR : ℕ → ℕ) : Bool :=
  !(cl oR uR (fun acc => cl oR uR (fun _ => true) n acc 6 []) n (List.range n) 6 (List.range n))

lemma card_image_I6 {n : ℕ} {A : I6 → Fin n} (hA : Function.Injective A) :
    (Finset.univ.image fun i => (A i : ℕ)).card = 6 := by
  show (Finset.univ.image (Fin.val ∘ A)).card = 6
  rw [Finset.card_image_of_injective _ (Fin.val_injective.comp hA)]; rfl

/-- **The clique step.** -/
theorem noTwo_sound {n : ℕ} {oR uR : ℕ → ℕ} (h : noTwo n oR uR = true) :
    NoTwoCliques (fun b c : Fin n => (oR b).testBit c = true) (fun b c : Fin n => (uR b).testBit c = true) := by
  rintro ⟨A, B, hA, hB, hOA, hOB, hU⟩
  set SA := Finset.univ.image fun i => (A i : ℕ)
  set SB := Finset.univ.image fun i => (B i : ℕ)
  have hfound : cl oR uR (fun acc => cl oR uR (fun _ => true) n acc 6 []) n (List.range n) 6 (List.range n) = true := by
    refine cl_complete oR uR _ n (List.range n) 6 (List.range n) SA (by simp) ?_ (card_image_I6 hA) ?_ ?_
    · intro a ha
      obtain ⟨i, -, rfl⟩ := Finset.mem_image.mp ha
      exact List.mem_range.mpr (A i).isLt
    · intro a ha b hb hab
      obtain ⟨i, -, rfl⟩ := Finset.mem_image.mp ha
      obtain ⟨j, -, rfl⟩ := Finset.mem_image.mp hb
      exact hOA i j fun hij => hab (hij ▸ rfl)
    · intro acc' hl hacc
      refine cl_complete oR uR _ n acc' 6 [] SB (by simpa using hl) ?_ (card_image_I6 hB) ?_ (fun _ _ _ => rfl)
      · intro b hb
        obtain ⟨j, -, rfl⟩ := Finset.mem_image.mp hb
        refine hacc _ (List.mem_range.mpr (B j).isLt) fun a ha => ?_
        obtain ⟨i, -, rfl⟩ := Finset.mem_image.mp ha
        exact hU i j
      · intro a ha b hb hab
        obtain ⟨i, -, rfl⟩ := Finset.mem_image.mp ha
        obtain ⟨j, -, rfl⟩ := Finset.mem_image.mp hb
        exact hOB i j fun hij => hab (hij ▸ rfl)
  simp only [noTwo, hfound, Bool.not_true] at h
  exact Bool.false_ne_true h

end NoFourMUBs.KernelAtlas
