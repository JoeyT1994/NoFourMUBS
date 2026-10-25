import KernelAtlas.Seed.Frame

/-!
# Coverage traversals of dyadic boxes (FORMAT §4, §6; `KERNEL_SEED.md` §6)

**Boxes.** `Bx` is FORMAT's `[m, i0, i1, i2, i3]`: in normalised coordinates `u_a ∈ [L_a, L_a + 2] / 2^m` with
`L_a = 2 i_a − 2^m` (`Bx.L`).  `b.Mem s w` says `w` lies in the scaled box `s · [lo, hi]`, as explicit inequalities
`s · lo_a ≤ w_a ≤ s · hi_a`, `lo_a = L_a / 2^m`, `hi_a = (L_a + 2) / 2^m`; for a seed ball `s = rn r`, for a record
`s = eta_scale`.  `Bx.inBox_of_mem` turns membership into the C1 form `InBox hb (w − wc)` (grid centre and half-width).

**The traversal** (`walk`), generic in the "misses" test: from the level-0 box `[−1, 1]⁴`, a box is covered if it is
listed, or `miss` holds, or each of its 16 children is covered (with fuel `max_level + 1`, so children exist only
below `max_level`).  The listed boxes are a list `Ls` **sorted in preorder** of the 16-ary tree (children in the
order of `Bx.child`: bit `a` of the child index is the new bit of `i_a`; ancestors first).  The traversal reads `Ls`
as a stream: a box is listed iff it is the head of the stream; when a box is finished (listed or missed), the stream
entries inside it are dropped (`dropUnder`; overlaps, duplicates and boxes inside discarded regions are allowed).  Each
node costs `O(1)` and each entry is read once.  Soundness does not depend on the order: the stream is always a
sublist of `Ls`, so the head is a listed box; a badly ordered list can only make the check fail.

`walk_sound`: if `walk` succeeds, every `u` of the root box with `P u` lies in a listed box, provided `miss b` excludes
`P` on `b`.  Instances:
* **seed sphere** (`sphereOK`, `sphere_cover`): `P u = (‖u‖² = 1)`, `miss` = min `‖u‖²` over the box `> 1` or
  max `< 1` (`sphMiss`, natural numbers).  Every `w` with `wnorm w = rn r` lies in a listed box.
* **C1 ball** (`ballOK`, `ball_cover`): `P u = (‖u‖² ≤ 1)`, `miss` = min `‖u‖² > 1` (`ballMiss`).  Every `w` with
  `wnorm w ≤ rn r` lies in a listed box; `ball_cover_boxes` gives the C1 side's `hcov` (`InBox D.hb (w − wc)`).
* **record shell** (`shellOK`, `shell_cover`): in `η = E u` (`E = eta_scale`), `P` = the shell
  `{‖η‖ ≤ r_H, lo ≤ ‖Tη‖² ≤ hi}` (`lo = R² − n²`, `hi = R²`), for a frame `T` whose Gram matrix is `GZ / Gd`
  (`gramOK` checks it exactly for a rational frame); `miss` (`shellMiss`): with the box centre `E M / 2^m`
  (`M = L + 1`) and `|δ| ≤ 1`, `(M + δ)ᵀ GZ (M + δ) ≤ MᵀGZM + 2‖GZ M‖₁ + Σ|GZ|` and `≥ MᵀGZM − 2‖GZ M‖₁`
  (`δᵀ GZ δ ≥ 0`: a Gram matrix), and `min ‖η‖ > r_H`.
-/

open Matrix Hadamard6 NoFourMUBs.StageC NoFourMUBs.SeedAtlas

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Boxes -/

/-- A dyadic box `[m, i0, i1, i2, i3]` (FORMAT §4). -/
structure Bx where
  m : ℕ
  i0 : ℕ
  i1 : ℕ
  i2 : ℕ
  i3 : ℕ

/-- The index `i_a`. -/
def Bx.ix (b : Bx) : ℕ → ℕ
  | 0 => b.i0
  | 1 => b.i1
  | 2 => b.i2
  | _ => b.i3

/-- The lower corner `L_a = 2 i_a − 2^m` (the box is `u_a ∈ [L_a, L_a + 2] / 2^m`). -/
def Bx.L (b : Bx) (a : ℕ) : ℤ := 2 * (b.ix a : ℤ) - 2 ^ b.m

/-- The normalised bounds `lo_a = L_a / 2^m`, `hi_a = (L_a + 2) / 2^m`. -/
noncomputable def Bx.lo (b : Bx) (a : Fin 4) : ℝ := (b.L a : ℝ) / 2 ^ b.m
noncomputable def Bx.hi (b : Bx) (a : Fin 4) : ℝ := ((b.L a : ℝ) + 2) / 2 ^ b.m

/-- **Box membership**: `w ∈ s · [lo, hi]`. -/
def Bx.Mem (s : ℝ) (b : Bx) (w : Fin 4 → ℝ) : Prop := ∀ a : Fin 4, s * b.lo a ≤ w a ∧ w a ≤ s * b.hi a

/-- The level-0 box `[−1, 1]⁴`. -/
def Bx.root : Bx := ⟨0, 0, 0, 0, 0⟩

/-- The child `c ∈ [0, 16)`: bit `a` of `c` is the new low bit of `i_a`. -/
def Bx.child (b : Bx) (c : ℕ) : Bx :=
  ⟨b.m + 1, 2 * b.i0 + c % 2, 2 * b.i1 + c / 2 % 2, 2 * b.i2 + c / 4 % 2, 2 * b.i3 + c / 8 % 2⟩

/-- Equality of boxes. -/
def Bx.beq (x y : Bx) : Bool :=
  Nat.beq x.m y.m && Nat.beq x.i0 y.i0 && Nat.beq x.i1 y.i1 && Nat.beq x.i2 y.i2 && Nat.beq x.i3 y.i3

/-- `y` lies in the subtree of `x` (`y = x` included).  Only used to skip stream entries. -/
def Bx.under (x y : Bx) : Bool :=
  Nat.ble x.m y.m && Nat.beq (y.i0 >>> (y.m - x.m)) x.i0 && Nat.beq (y.i1 >>> (y.m - x.m)) x.i1 &&
    Nat.beq (y.i2 >>> (y.m - x.m)) x.i2 && Nat.beq (y.i3 >>> (y.m - x.m)) x.i3

/-! ### The traversal -/

/-- Drop the leading stream entries inside `x`. -/
def dropUnder (x : Bx) : List Bx → List Bx
  | [] => []
  | y :: ys => if x.under y then dropUnder x ys else y :: ys

/-- The stream starts with `x`. -/
def headIs (x : Bx) : List Bx → Bool
  | [] => false
  | y :: _ => x.beq y

/-- The 16 children, in order. -/
def kids16 : List ℕ := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

/-- Run `g` on the children `c ∈ cs` of `x`, threading the stream. -/
def walkKids (g : Bx → List Bx → Option (List Bx)) (x : Bx) : List ℕ → List Bx → Option (List Bx)
  | [], s => some s
  | c :: cs, s =>
    match g (x.child c) s with
    | some s' => walkKids g x cs s'
    | none => none

/-- **The coverage traversal**: covered if listed (head of the stream), or missed, or all children covered. -/
def walk (miss : Bx → Bool) : ℕ → Bx → List Bx → Option (List Bx)
  | 0, _, _ => none
  | f + 1, x, s =>
    if headIs x s || miss x then some (dropUnder x s)
    else walkKids (walk miss f) x kids16 s
termination_by structural f => f

/-! ### Box geometry -/

lemma Bx.beq_eq {x y : Bx} (h : x.beq y = true) : x = y := by
  simp only [Bx.beq, Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩ := h
  cases x; cases y
  have e1 := Nat.eq_of_beq_eq_true h1
  have e2 := Nat.eq_of_beq_eq_true h2
  have e3 := Nat.eq_of_beq_eq_true h3
  have e4 := Nat.eq_of_beq_eq_true h4
  have e5 := Nat.eq_of_beq_eq_true h5
  simp only at e1 e2 e3 e4 e5
  subst e1 e2 e3 e4 e5; rfl

lemma Bx.child_L (x : Bx) (c : ℕ) {a : ℕ} (ha : a < 4) :
    (x.child c).L a = 2 * x.L a + 2 * ((c / 2 ^ a % 2 : ℕ) : ℤ) := by
  interval_cases a <;> simp [Bx.child, Bx.L, Bx.ix, pow_succ] <;> ring

lemma two_pow_pos' (m : ℕ) : (0 : ℝ) < 2 ^ m := by positivity

/-- Every point of a box lies in one of its 16 children. -/
lemma Bx.mem_child {x : Bx} {u : Fin 4 → ℝ} (hu : x.Mem 1 u) : ∃ c ∈ kids16, (x.child c).Mem 1 u := by
  have hp := two_pow_pos' x.m
  have hp2 : (2 : ℝ) ^ (x.m + 1) = 2 * 2 ^ x.m := by rw [pow_succ]; ring
  -- the bit of coordinate `a`
  have hbit : ∀ a : Fin 4, ∃ β : ℕ, β ≤ 1 ∧ ((x.L a : ℝ) + β) / 2 ^ x.m ≤ u a ∧
      u a ≤ ((x.L a : ℝ) + β + 1) / 2 ^ x.m := by
    intro a
    obtain ⟨h1, h2⟩ := hu a
    simp only [Bx.lo, Bx.hi, one_mul] at h1 h2
    by_cases hc : u a ≤ ((x.L a : ℝ) + 1) / 2 ^ x.m
    · exact ⟨0, by norm_num, by simpa using h1, by simpa using hc⟩
    · refine ⟨1, le_rfl, ?_, ?_⟩
      · push_cast; linarith
      · push_cast; rw [show (x.L a : ℝ) + 1 + 1 = x.L a + 2 by ring]; exact h2
  choose β hβ1 hβ2 hβ3 using hbit
  refine ⟨β 0 + 2 * β 1 + 4 * β 2 + 8 * β 3, ?_, fun a => ?_⟩
  · have := hβ1 0; have := hβ1 1; have := hβ1 2; have := hβ1 3
    simp only [kids16, List.mem_cons, List.not_mem_nil, or_false]
    omega
  · have hc : (β 0 + 2 * β 1 + 4 * β 2 + 8 * β 3) / 2 ^ (a : ℕ) % 2 = β a := by
      have := hβ1 0; have := hβ1 1; have := hβ1 2; have := hβ1 3
      fin_cases a <;> simp <;> omega
    have hL := Bx.child_L x (β 0 + 2 * β 1 + 4 * β 2 + 8 * β 3) a.2
    rw [hc] at hL
    simp only [Bx.lo, Bx.hi, one_mul, hL]
    simp only [Bx.child] at *
    rw [hp2]
    push_cast
    constructor
    · rw [show (2 * (x.L a : ℝ) + 2 * β a) / (2 * 2 ^ x.m) = ((x.L a : ℝ) + β a) / 2 ^ x.m by field_simp]
      exact hβ2 a
    · rw [show (2 * (x.L a : ℝ) + 2 * β a + 2) / (2 * 2 ^ x.m) = ((x.L a : ℝ) + β a + 1) / 2 ^ x.m by field_simp]
      exact hβ3 a

/-! ### Soundness of the traversal -/

lemma dropUnder_sub (x : Bx) : ∀ (s : List Bx), ∀ y ∈ dropUnder x s, y ∈ s
  | [] => by simp [dropUnder]
  | z :: zs => by
    intro y hy
    unfold dropUnder at hy
    split_ifs at hy
    · exact List.mem_cons_of_mem _ (dropUnder_sub x zs y hy)
    · exact hy

lemma walkKids_spec {g : Bx → List Bx → Option (List Bx)} {x : Bx}
    (hg : ∀ y t t', g y t = some t' → ∀ z ∈ t', z ∈ t) :
    ∀ (cs : List ℕ) (s s' : List Bx), walkKids g x cs s = some s' →
      (∀ z ∈ s', z ∈ s) ∧ ∀ c ∈ cs, ∃ t t', (∀ z ∈ t, z ∈ s) ∧ g (x.child c) t = some t'
  | [], s, s', h => by
    simp only [walkKids, Option.some.injEq] at h
    subst h
    exact ⟨fun z hz => hz, fun c hc => by simp at hc⟩
  | c :: cs, s, s', h => by
    simp only [walkKids] at h
    split at h
    · rename_i s1 h1
      obtain ⟨ih1, ih2⟩ := walkKids_spec hg cs s1 s' h
      have hs1 := hg _ _ _ h1
      refine ⟨fun z hz => hs1 z (ih1 z hz), fun c' hc' => ?_⟩
      rcases List.mem_cons.mp hc' with rfl | hc'
      · exact ⟨s, s1, fun z hz => hz, h1⟩
      · obtain ⟨t, t', ht, ht'⟩ := ih2 c' hc'
        exact ⟨t, t', fun z hz => hs1 z (ht z hz), ht'⟩
    · exact absurd h (by simp)

section Walk

variable {miss : Bx → Bool} {P : (Fin 4 → ℝ) → Prop}

/-- **Soundness of the traversal.** -/
theorem walk_sound (hmiss : ∀ b, miss b = true → ∀ u, b.Mem 1 u → ¬ P u) (Ls : List Bx) :
    ∀ (f : ℕ) (x : Bx) (s s' : List Bx), walk miss f x s = some s' →
      (∀ z ∈ s', z ∈ s) ∧ ((∀ z ∈ s, z ∈ Ls) → ∀ u, x.Mem 1 u → P u → ∃ b ∈ Ls, b.Mem 1 u)
  | 0, x, s, s', h => by simp [walk] at h
  | f + 1, x, s, s', h => by
    have ih := walk_sound hmiss Ls f
    simp only [walk] at h
    split_ifs at h with hc
    · simp only [Option.some.injEq] at h
      subst h
      refine ⟨dropUnder_sub x s, fun hs u hu hP => ?_⟩
      rcases Bool.or_eq_true_iff.mp hc with hh | hm
      · cases s with
        | nil => simp [headIs] at hh
        | cons y ys =>
          have hxy : x = y := Bx.beq_eq hh
          exact ⟨x, hs x (by rw [hxy]; exact List.mem_cons_self), hu⟩
      · exact absurd hP (hmiss x hm u hu)
    · have hg : ∀ y t t', walk miss f y t = some t' → ∀ z ∈ t', z ∈ t := fun y t t' h' => (ih y t t' h').1
      obtain ⟨h1, h2⟩ := walkKids_spec hg kids16 s s' h
      refine ⟨h1, fun hs u hu hP => ?_⟩
      obtain ⟨c, hc, huc⟩ := Bx.mem_child hu
      obtain ⟨t, t', ht, ht'⟩ := h2 c hc
      exact (ih _ t t' ht').2 (fun z hz => hs z (ht z hz)) u huc hP

/-- The traversal from the root succeeds. -/
def coverOK (miss : Bx → Bool) (maxl : ℕ) (Ls : List Bx) : Bool := (walk miss (maxl + 1) Bx.root Ls).isSome

theorem cover_sound (hmiss : ∀ b, miss b = true → ∀ u, b.Mem 1 u → ¬ P u) {maxl : ℕ} {Ls : List Bx}
    (h : coverOK miss maxl Ls = true) : ∀ u, Bx.root.Mem 1 u → P u → ∃ b ∈ Ls, b.Mem 1 u := by
  obtain ⟨s', hs'⟩ := Option.isSome_iff_exists.mp h
  exact (walk_sound hmiss Ls _ _ _ _ hs').2 (fun z hz => hz)

end Walk

/-! ### Scaling -/

lemma Bx.mem_scale {s : ℝ} (hs : 0 < s) {b : Bx} {w : Fin 4 → ℝ} :
    b.Mem s w ↔ b.Mem 1 (fun a => w a / s) := by
  simp only [Bx.Mem, one_mul]
  refine forall_congr' fun a => ?_
  rw [le_div_iff₀ hs, div_le_iff₀ hs, mul_comm (b.lo a), mul_comm (b.hi a)]

lemma Bx.root_mem {u : Fin 4 → ℝ} (h : ∀ a, |u a| ≤ 1) : Bx.root.Mem 1 u := by
  intro a
  have := abs_le.mp (h a)
  simp only [Bx.lo, Bx.hi, Bx.root, Bx.L, one_mul]
  have e : ∀ a : Fin 4, Bx.ix ⟨0, 0, 0, 0, 0⟩ a = 0 := by intro a; fin_cases a <;> rfl
  rw [e]
  norm_num
  exact ⟨by linarith, by linarith⟩

/-! ### `‖u‖²` over a box -/

/-- `min_{t ∈ [L, L + 2]} |t|`. -/
def dmin (L : ℤ) : ℤ := if 0 < L then L else if L + 2 < 0 then -(L + 2) else 0

/-- `max_{t ∈ [L, L + 2]} t²`. -/
def dmax2 (L : ℤ) : ℤ := max (L ^ 2) ((L + 2) ^ 2)

/-- `4^m · min ‖u‖²` and `4^m · max ‖u‖²` over the box. -/
def Bx.minSq (b : Bx) : ℤ := (l4 fun a => dmin (b.L a) ^ 2).sum
def Bx.maxSq (b : Bx) : ℤ := (l4 fun a => dmax2 (b.L a)).sum

lemma sq_bounds {L : ℤ} {y : ℝ} (h1 : (L : ℝ) ≤ y) (h2 : y ≤ L + 2) :
    ((dmin L : ℤ) : ℝ) ^ 2 ≤ y ^ 2 ∧ y ^ 2 ≤ ((dmax2 L : ℤ) : ℝ) := by
  constructor
  · unfold dmin
    split_ifs with ha hb
    · have : (0 : ℝ) < L := by exact_mod_cast ha
      exact pow_le_pow_left₀ this.le h1 2
    · have : (L : ℝ) + 2 < 0 := by exact_mod_cast hb
      push_cast
      nlinarith
    · simp only [Int.cast_zero, ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, zero_pow]
      exact sq_nonneg y
  · unfold dmax2
    push_cast
    rcases le_total ((L : ℝ) ^ 2) (((L : ℝ) + 2) ^ 2) with h | h
    · rw [max_eq_right h]; nlinarith
    · rw [max_eq_left h]; nlinarith

lemma norm_sq_bounds {b : Bx} {u : Fin 4 → ℝ} (hu : b.Mem 1 u) :
    (b.minSq : ℝ) / 4 ^ b.m ≤ ∑ a, u a ^ 2 ∧ ∑ a, u a ^ 2 ≤ (b.maxSq : ℝ) / 4 ^ b.m := by
  have hp := two_pow_pos' b.m
  have h4 : (4 : ℝ) ^ b.m = (2 ^ b.m) ^ 2 := by rw [← pow_mul, mul_comm, pow_mul]; norm_num
  have hb : ∀ a : Fin 4, ((dmin (b.L a) : ℤ) : ℝ) ^ 2 / 4 ^ b.m ≤ u a ^ 2 ∧
      u a ^ 2 ≤ ((dmax2 (b.L a) : ℤ) : ℝ) / 4 ^ b.m := by
    intro a
    obtain ⟨h1, h2⟩ := hu a
    simp only [Bx.lo, Bx.hi, one_mul, div_le_iff₀ hp, le_div_iff₀ hp] at h1 h2
    obtain ⟨k1, k2⟩ := sq_bounds (L := b.L a) (y := u a * 2 ^ b.m) h1 (by linarith)
    rw [h4, div_le_iff₀ (by positivity), le_div_iff₀ (by positivity)]
    constructor <;> nlinarith
  simp only [Bx.minSq, Bx.maxSq, sum_l4Z, Fin.sum_univ_four]
  push_cast
  have := hb 0; have := hb 1; have := hb 2; have := hb 3
  simp only [Fin.val_zero, Fin.val_one, Fin.val_two] at *
  rw [show ((3 : Fin 4) : ℕ) = 3 from rfl] at *
  constructor
  · rw [add_div, add_div, add_div]; linarith
  · rw [add_div, add_div, add_div]; linarith

/-! ### The same in natural numbers (the kernel's form) -/

/-- `|L_a|`-type quantities with truncated subtraction: `dmin` and `max(|L|, |L + 2|)`. -/
def Bx.dminN (b : Bx) (a : ℕ) : ℕ := (2 * b.ix a - 2 ^ b.m) + (2 ^ b.m - (2 * b.ix a + 2))
def Bx.dmaxN (b : Bx) (a : ℕ) : ℕ :=
  max ((2 * b.ix a - 2 ^ b.m) + (2 ^ b.m - 2 * b.ix a)) ((2 * b.ix a + 2 - 2 ^ b.m) + (2 ^ b.m - (2 * b.ix a + 2)))

/-- `4^m · min ‖u‖²` and `4^m · max ‖u‖²` over the box, in `ℕ`. -/
def Bx.minSqN (b : Bx) : ℕ :=
  b.dminN 0 * b.dminN 0 + b.dminN 1 * b.dminN 1 + b.dminN 2 * b.dminN 2 + b.dminN 3 * b.dminN 3
def Bx.maxSqN (b : Bx) : ℕ :=
  b.dmaxN 0 * b.dmaxN 0 + b.dmaxN 1 * b.dmaxN 1 + b.dmaxN 2 * b.dmaxN 2 + b.dmaxN 3 * b.dmaxN 3

lemma Bx.dminN_eq (b : Bx) (a : ℕ) : (b.dminN a : ℤ) = dmin (b.L a) := by
  unfold Bx.dminN dmin Bx.L
  generalize b.ix a = x
  generalize hP : 2 ^ b.m = P
  have hP' : ((2 : ℤ) ^ b.m) = (P : ℤ) := by rw [← hP]; push_cast; rfl
  rw [hP']
  split_ifs <;> omega

lemma Bx.dmaxN_sq (b : Bx) (a : ℕ) : ((b.dmaxN a * b.dmaxN a : ℕ) : ℤ) = dmax2 (b.L a) := by
  unfold Bx.dmaxN dmax2 Bx.L
  generalize b.ix a = x
  generalize hP : 2 ^ b.m = P
  have hP' : ((2 : ℤ) ^ b.m) = (P : ℤ) := by rw [← hP]; push_cast; rfl
  rw [hP']
  have e1 : (((2 * x - P) + (P - 2 * x) : ℕ) : ℤ) = |2 * (x : ℤ) - P| := by
    rcases le_total (P : ℤ) (2 * x) with h | h
    · rw [abs_of_nonneg (by linarith)]; omega
    · rw [abs_of_nonpos (by linarith)]; omega
  have e2 : (((2 * x + 2 - P) + (P - (2 * x + 2)) : ℕ) : ℤ) = |2 * (x : ℤ) - P + 2| := by
    rcases le_total (P : ℤ) (2 * x + 2) with h | h
    · rw [abs_of_nonneg (by linarith)]; omega
    · rw [abs_of_nonpos (by linarith)]; omega
  set d1 := (2 * x - P) + (P - 2 * x)
  set d2 := (2 * x + 2 - P) + (P - (2 * x + 2))
  rcases le_total d1 d2 with h | h
  · rw [max_eq_right h]
    have h' : (d1 : ℤ) ≤ d2 := by exact_mod_cast h
    rw [e1, e2] at h'
    have : (2 * (x : ℤ) - P) ^ 2 ≤ (2 * (x : ℤ) - P + 2) ^ 2 := by
      rw [← sq_abs, ← sq_abs (2 * (x : ℤ) - P + 2)]
      exact pow_le_pow_left₀ (abs_nonneg _) h' 2
    rw [max_eq_right this]
    push_cast; rw [e2, ← sq, sq_abs]
  · rw [max_eq_left h]
    have h' : (d2 : ℤ) ≤ d1 := by exact_mod_cast h
    rw [e1, e2] at h'
    have : (2 * (x : ℤ) - P + 2) ^ 2 ≤ (2 * (x : ℤ) - P) ^ 2 := by
      rw [← sq_abs, ← sq_abs (2 * (x : ℤ) - P)]
      exact pow_le_pow_left₀ (abs_nonneg _) h' 2
    rw [max_eq_left this]
    push_cast; rw [e1, ← sq, sq_abs]

lemma Bx.minSqN_eq (b : Bx) : (b.minSqN : ℤ) = b.minSq := by
  simp only [Bx.minSqN, Bx.minSq, sum_l4Z]
  push_cast
  simp only [Bx.dminN_eq]; ring

lemma Bx.maxSqN_eq (b : Bx) : (b.maxSqN : ℤ) = b.maxSq := by
  simp only [Bx.maxSqN, Bx.maxSq, sum_l4Z]
  rw [Nat.cast_add, Nat.cast_add, Nat.cast_add, Bx.dmaxN_sq, Bx.dmaxN_sq, Bx.dmaxN_sq, Bx.dmaxN_sq]

/-! ### The seed sphere and the C1 ball -/

/-- The box misses the unit sphere: `min ‖u‖² > 1` or `max ‖u‖² < 1` (natural numbers). -/
def sphMiss (b : Bx) : Bool := Nat.blt (4 ^ b.m) b.minSqN || Nat.blt b.maxSqN (4 ^ b.m)

/-- The box misses the closed unit ball: `min ‖u‖² > 1`. -/
def ballMiss (b : Bx) : Bool := Nat.blt (4 ^ b.m) b.minSqN

lemma lt_minSq {b : Bx} (h : Nat.blt (4 ^ b.m) b.minSqN = true) : (4 : ℝ) ^ b.m < b.minSq := by
  have h1 : 4 ^ b.m < b.minSqN := Nat.blt_eq ▸ h
  have h2 : ((4 ^ b.m : ℕ) : ℤ) < b.minSqN := by exact_mod_cast h1
  rw [Bx.minSqN_eq] at h2
  have h3 : (((4 ^ b.m : ℕ) : ℤ) : ℝ) < (b.minSq : ℝ) := by exact_mod_cast h2
  push_cast at h3; exact h3

lemma maxSq_lt {b : Bx} (h : Nat.blt b.maxSqN (4 ^ b.m) = true) : (b.maxSq : ℝ) < 4 ^ b.m := by
  have h1 : b.maxSqN < 4 ^ b.m := Nat.blt_eq ▸ h
  have h2 : (b.maxSqN : ℤ) < ((4 ^ b.m : ℕ) : ℤ) := by exact_mod_cast h1
  rw [Bx.maxSqN_eq] at h2
  have h3 : (b.maxSq : ℝ) < (((4 ^ b.m : ℕ) : ℤ) : ℝ) := by exact_mod_cast h2
  push_cast at h3; exact h3

lemma sphMiss_sound (b : Bx) (h : sphMiss b = true) (u : Fin 4 → ℝ) (hu : b.Mem 1 u) :
    ¬ (∑ a, u a ^ 2 = 1) := by
  obtain ⟨h1, h2⟩ := norm_sq_bounds hu
  have h4 : (0 : ℝ) < 4 ^ b.m := by positivity
  intro he
  rw [he] at h1 h2
  rw [div_le_iff₀ h4, one_mul] at h1
  rw [le_div_iff₀ h4, one_mul] at h2
  rcases Bool.or_eq_true_iff.mp h with hh | hh
  · linarith [lt_minSq hh]
  · linarith [maxSq_lt hh]

lemma ballMiss_sound (b : Bx) (h : ballMiss b = true) (u : Fin 4 → ℝ) (hu : b.Mem 1 u) :
    ¬ (∑ a, u a ^ 2 ≤ 1) := by
  obtain ⟨h1, -⟩ := norm_sq_bounds hu
  have h4 : (0 : ℝ) < 4 ^ b.m := by positivity
  intro he
  rw [div_le_iff₀ h4] at h1
  have := lt_minSq h
  nlinarith

/-- **The seed sphere check** (FORMAT §4): `r > 0` and the traversal with `sphMiss`. -/
def sphereOK (r maxl : ℕ) (Ls : List Bx) : Bool := decide (0 < r) && coverOK sphMiss maxl Ls

/-- **The C1 ball check**: `r > 0` and the traversal with `ballMiss`. -/
def ballOK (r maxl : ℕ) (Ls : List Bx) : Bool := decide (0 < r) && coverOK ballMiss maxl Ls

lemma wnorm_sq (w : Fin 4 → ℝ) : wnorm w ^ 2 = ∑ k, w k ^ 2 :=
  Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)

/-- Normalisation: `u = w / s` has `Σ u² = ‖w‖² / s²` and lies in the root box when `‖w‖ ≤ s`. -/
lemma norm_scaled {s : ℝ} (hs : 0 < s) {w : Fin 4 → ℝ} (hw : wnorm w ≤ s) :
    Bx.root.Mem 1 (fun a => w a / s) ∧ ∑ a, (w a / s) ^ 2 = wnorm w ^ 2 / s ^ 2 := by
  have e : ∑ a, (w a / s) ^ 2 = wnorm w ^ 2 / s ^ 2 := by
    rw [wnorm_sq, Finset.sum_div]; simp only [div_pow]
  refine ⟨Bx.root_mem fun a => ?_, e⟩
  rw [abs_div, abs_of_pos hs, div_le_one hs]
  exact (abs_le_wnorm w a).trans hw

/-- **Seed sphere coverage**: every `w` with `‖w‖ = r` lies in a listed box. -/
theorem sphere_cover {r maxl : ℕ} {Ls : List Bx} (h : sphereOK r maxl Ls = true) :
    ∀ w : Fin 4 → ℝ, wnorm w = rn r → ∃ b ∈ Ls, b.Mem (rn r) w := by
  simp only [sphereOK, Bool.and_eq_true, decide_eq_true_eq] at h
  have hs : 0 < rn r := by unfold rn; have : (0 : ℝ) < r := by exact_mod_cast h.1
                           positivity
  intro w hw
  obtain ⟨hroot, hsum⟩ := norm_scaled hs hw.le
  obtain ⟨b, hb, hbm⟩ := cover_sound (P := fun u => ∑ a, u a ^ 2 = 1) sphMiss_sound h.2 _ hroot
    (by rw [hsum, hw, div_self (by positivity)])
  exact ⟨b, hb, (Bx.mem_scale hs).mpr hbm⟩

/-- **C1 ball coverage**: every `w` with `‖w‖ ≤ r` lies in a listed box. -/
theorem ball_cover {r maxl : ℕ} {Ls : List Bx} (h : ballOK r maxl Ls = true) :
    ∀ w : Fin 4 → ℝ, wnorm w ≤ rn r → ∃ b ∈ Ls, b.Mem (rn r) w := by
  simp only [ballOK, Bool.and_eq_true, decide_eq_true_eq] at h
  have hs : 0 < rn r := by unfold rn; have : (0 : ℝ) < r := by exact_mod_cast h.1
                           positivity
  intro w hw
  obtain ⟨hroot, hsum⟩ := norm_scaled hs hw
  obtain ⟨b, hb, hbm⟩ := cover_sound (P := fun u => ∑ a, u a ^ 2 ≤ 1) ballMiss_sound h.2 _ hroot (by
    rw [hsum, div_le_one (by positivity)]
    exact pow_le_pow_left₀ (wnorm_nonneg w) hw 2)
  exact ⟨b, hb, (Bx.mem_scale hs).mpr hbm⟩

/-! ### Boxes as C1 boxes: grid centre and half-width -/

/-- The grid centre `wc_a = (r / 2^m)(L_a + 1)` (FORMAT §4: `r·(−2^m + 2 i_a + 1)/2^m`). -/
def Bx.wcZ (r : ℕ) (b : Bx) : List ℤ := l4 fun a => ((r / 2 ^ b.m : ℕ) : ℤ) * (b.L a + 1)

/-- The grid half-widths `r / 2^m`. -/
def Bx.hbN (r : ℕ) (b : Bx) : List ℕ := l4 fun _ => r / 2 ^ b.m

/-- **A box of a seed ball is a C1 box**: if `2^m ∣ r`, then `w ∈ rn r · [lo, hi]` gives
`InBox hb (w − wc)`, i.e. `w = wOf D u` with `u ∈ InBox D.hb` for `D.wc = b.wcZ r`, `D.hb = b.hbN r`. -/
theorem Bx.inBox_of_mem {r : ℕ} {b : Bx} (hdiv : r % 2 ^ b.m = 0) {w : Fin 4 → ℝ} (hw : b.Mem (rn r) w) :
    InBox (b.hbN r) (fun j => w j - rq (gi (b.wcZ r) j)) := by
  intro j
  have hp := two_pow_pos' b.m
  have hr : (r : ℝ) = ((r / 2 ^ b.m : ℕ) : ℝ) * 2 ^ b.m := by
    have := Nat.div_add_mod r (2 ^ b.m)
    rw [hdiv, add_zero] at this
    exact_mod_cast (by rw [mul_comm]; exact this.symm : r = r / 2 ^ b.m * 2 ^ b.m)
  set q : ℝ := ((r / 2 ^ b.m : ℕ) : ℝ)
  have hhb : (b.hbN r).getD j 0 = r / 2 ^ b.m := by
    simp only [Bx.hbN, l4]; fin_cases j <;> rfl
  have hwc : gi (b.wcZ r) j = ((r / 2 ^ b.m : ℕ) : ℤ) * (b.L j + 1) := by
    simp only [Bx.wcZ, gi, l4]; fin_cases j <;> rfl
  show |w j - rq (gi (b.wcZ r) j)| ≤ rn ((b.hbN r).getD j 0)
  rw [hhb, hwc]
  obtain ⟨h1, h2⟩ := hw j
  simp only [Bx.lo, Bx.hi, rn, hr] at h1 h2
  have e1 : q * 2 ^ b.m / 2 ^ pp * ((b.L j : ℝ) / 2 ^ b.m) = q * b.L j / 2 ^ pp := by field_simp
  have e2 : q * 2 ^ b.m / 2 ^ pp * (((b.L j : ℝ) + 2) / 2 ^ b.m) = q * (b.L j + 2) / 2 ^ pp := by field_simp
  rw [e1] at h1
  rw [e2] at h2
  simp only [rq, rn, Int.cast_mul, Int.cast_add, Int.cast_one, Int.cast_natCast]
  have k1 : q * ((b.L j : ℝ) + 1) / 2 ^ pp = q * b.L j / 2 ^ pp + q / 2 ^ pp := by ring
  have k2 : q * ((b.L j : ℝ) + 2) / 2 ^ pp = q * b.L j / 2 ^ pp + 2 * (q / 2 ^ pp) := by ring
  rw [abs_le]
  constructor <;> linarith

/-- **C1 boxes from the ball traversal**: if every listed box `b` has `2^m ∣ r` and a C1 box `D` with
`D.wc = b.wcZ r`, `D.hb = b.hbN r`, then every `‖w‖ ≤ r` lies in some `D` (the hypothesis `hcov` of the C1 side,
`w = wOf D u`). -/
theorem ball_cover_boxes {r maxl : ℕ} {Ls : List Bx} (h : ballOK r maxl Ls = true) {boxes : List BoxD}
    (hmatch : ∀ b ∈ Ls, r % 2 ^ b.m = 0 ∧ ∃ D ∈ boxes, D.wc = b.wcZ r ∧ D.hb = b.hbN r) :
    ∀ w : Fin 4 → ℝ, wnorm w ≤ rn r → ∃ D ∈ boxes, InBox D.hb (fun l => w l - rq (gi D.wc l)) := by
  intro w hw
  obtain ⟨b, hb, hbm⟩ := ball_cover h w hw
  obtain ⟨hdiv, D, hD, hwc, hhb⟩ := hmatch b hb
  refine ⟨D, hD, ?_⟩
  rw [hwc, hhb]
  exact Bx.inBox_of_mem hdiv hbm

/-! ### The record shell (FORMAT §6) -/

/-- The data of a record's shell: `eta_scale`, `r_H`, `lo = R² − n²`, `hi = R²` (rationals) and the Gram matrix
`GZ / Gd` of the frame (`GZ` row-major integers). -/
structure ShellD where
  E : ℚ
  rH : ℚ
  lo : ℚ
  hi : ℚ
  GZ : List ℤ
  Gd : ℕ

/-- The box (in units of `E`) is certified to miss the shell: `max ‖Tη‖² < lo`, `min ‖Tη‖² > hi`, or
`min ‖η‖ > r_H`.  With `sc = E² / (Gd 4^m)`, the tests `X sc < lo`, `hi < X sc`, `r_H² 4^m < E² minSq` are
compared in integers (numerators and denominators of the rationals; the constants are shared closed terms). -/
def shellMiss (S : ShellD) (b : Bx) : Bool :=
  let M : ℕ → ℤ := fun a => b.L a + 1
  let GM : ℕ → ℤ := fun i => (l4 fun a => gi S.GZ (4 * i + a) * M a).sum
  let mgm : ℤ := (l4 fun i => M i * GM i).sum
  let a1 : ℤ := (l4 fun i => |GM i|).sum
  let aG : ℤ := (l16 fun q => |gi S.GZ q|).sum
  let D : ℕ := S.Gd * 4 ^ b.m
  decide ((mgm + 2 * a1 + aG) * (S.E.num ^ 2 * S.lo.den) < S.lo.num * D * S.E.den ^ 2) ||
    decide (S.hi.num * D * S.E.den ^ 2 < (mgm - 2 * a1) * (S.E.num ^ 2 * S.hi.den)) ||
    Nat.blt (S.rH.num.natAbs ^ 2 * S.E.den ^ 2 * 4 ^ b.m) (S.E.num.natAbs ^ 2 * S.rH.den ^ 2 * b.minSqN)

lemma rat_eq_num_div (q : ℚ) : (q : ℝ) = (q.num : ℝ) / q.den := by
  have := Rat.cast_def (K := ℝ) q
  exact this

/-- `X E² / D < lo` from the integer test. -/
lemma int_test1 {X : ℤ} {E lo : ℚ} {D : ℕ} (hD : 0 < D) (h : X * (E.num ^ 2 * lo.den) < lo.num * D * E.den ^ 2) :
    (X : ℝ) * ((E : ℝ) ^ 2 / D) < lo := by
  have hEd : (0 : ℝ) < E.den := by exact_mod_cast E.den_pos
  have hld : (0 : ℝ) < lo.den := by exact_mod_cast lo.den_pos
  have hD' : (0 : ℝ) < D := by exact_mod_cast hD
  have hq : ((X * (E.num ^ 2 * lo.den) : ℤ) : ℝ) < ((lo.num * D * E.den ^ 2 : ℤ) : ℝ) := by exact_mod_cast h
  push_cast at hq
  rw [rat_eq_num_div E, rat_eq_num_div lo, div_pow, div_div, ← mul_div_assoc, div_lt_div_iff₀ (by positivity) hld]
  nlinarith

/-- `hi < X E² / D` from the integer test. -/
lemma int_test2 {X : ℤ} {E hi : ℚ} {D : ℕ} (hD : 0 < D) (h : hi.num * D * E.den ^ 2 < X * (E.num ^ 2 * hi.den)) :
    (hi : ℝ) < (X : ℝ) * ((E : ℝ) ^ 2 / D) := by
  have hEd : (0 : ℝ) < E.den := by exact_mod_cast E.den_pos
  have hhd : (0 : ℝ) < hi.den := by exact_mod_cast hi.den_pos
  have hD' : (0 : ℝ) < D := by exact_mod_cast hD
  have hq : ((hi.num * D * E.den ^ 2 : ℤ) : ℝ) < ((X * (E.num ^ 2 * hi.den) : ℤ) : ℝ) := by exact_mod_cast h
  push_cast at hq
  rw [rat_eq_num_div E, rat_eq_num_div hi, div_pow, div_div, ← mul_div_assoc, div_lt_div_iff₀ hhd (by positivity)]
  nlinarith

/-- `r_H² 4^m < E² X` from the natural-number test. -/
lemma int_test3 {X : ℕ} {E rH : ℚ} {m : ℕ}
    (h : Nat.blt (rH.num.natAbs ^ 2 * E.den ^ 2 * 4 ^ m) (E.num.natAbs ^ 2 * rH.den ^ 2 * X) = true) :
    (rH : ℝ) ^ 2 * 4 ^ m < (E : ℝ) ^ 2 * X := by
  have h1 : rH.num.natAbs ^ 2 * E.den ^ 2 * 4 ^ m < E.num.natAbs ^ 2 * rH.den ^ 2 * X := Nat.blt_eq ▸ h
  have hEd : (0 : ℝ) < E.den := by exact_mod_cast E.den_pos
  have hrd : (0 : ℝ) < rH.den := by exact_mod_cast rH.den_pos
  have hq : (((rH.num.natAbs ^ 2 * E.den ^ 2 * 4 ^ m : ℕ)) : ℝ) < ((E.num.natAbs ^ 2 * rH.den ^ 2 * X : ℕ) : ℝ) := by
    exact_mod_cast h1
  push_cast [Nat.cast_natAbs, sq_abs] at hq
  rw [rat_eq_num_div E, rat_eq_num_div rH, div_pow, div_pow]
  rw [div_mul_eq_mul_div, div_mul_eq_mul_div, div_lt_div_iff₀ (by positivity) (by positivity)]
  nlinarith

/-- **The record shell check**: `E > 0`, `r_H ≤ E` (the root box contains `‖η‖ ≤ r_H`), `Gd > 0`, and the
traversal with `shellMiss`. -/
def shellOK (S : ShellD) (maxl : ℕ) (Ls : List Bx) : Bool :=
  decide (0 < S.E) && decide (S.rH ≤ S.E) && decide (0 < S.Gd) && coverOK (shellMiss S) maxl Ls

/-- `‖Tη‖² = Σ_kl η_k η_l ⟨T_k, T_l⟩`. -/
lemma sumsq_tang (T : Fin 4 → RMat6) (η : Fin 4 → ℝ) :
    sumsq (tang T η) = ∑ k, ∑ l, η k * η l * ∑ a, ∑ c, T k a c * T l a c := by
  have e : ∀ a c, tang T η a c ^ 2 = ∑ k, ∑ l, η k * η l * (T k a c * T l a c) := by
    intro a c
    have : tang T η a c = ∑ k, η k * T k a c := by simp [tang, Matrix.sum_apply]
    rw [this, sq, Finset.sum_mul_sum]
    exact Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun l _ => by ring
  simp only [sumsq, e, Finset.mul_sum]
  calc ∑ a, ∑ c, ∑ k, ∑ l, η k * η l * (T k a c * T l a c)
      = ∑ a, ∑ k, ∑ l, ∑ c, η k * η l * (T k a c * T l a c) := by
        refine Finset.sum_congr rfl fun a _ => ?_
        rw [Finset.sum_comm]
        exact Finset.sum_congr rfl fun k _ => Finset.sum_comm
    _ = ∑ k, ∑ l, ∑ a, ∑ c, η k * η l * (T k a c * T l a c) := by
        rw [Finset.sum_comm]
        exact Finset.sum_congr rfl fun k _ => Finset.sum_comm

/-- The Gram hypothesis: `GZ_kl / Gd = ⟨T_k, T_l⟩`. -/
def GramOf (S : ShellD) (T : Fin 4 → RMat6) : Prop :=
  ∀ k l : Fin 4, (gi S.GZ (4 * k + l) : ℝ) / S.Gd = ∑ a, ∑ c, T k a c * T l a c

section Shell

variable {S : ShellD} {T : Fin 4 → RMat6}

lemma l16_absZ (S : ShellD) : ((l16 fun q => |gi S.GZ q|).sum : ℝ) =
    ∑ k : Fin 4, ∑ l : Fin 4, |(gi S.GZ (4 * k + l) : ℝ)| := by
  simp only [l16, List.sum_cons, List.sum_nil, Fin.sum_univ_four, Fin.val_zero, Fin.val_one, Fin.val_two]
  rw [show ((3 : Fin 4) : ℕ) = 3 from rfl]
  push_cast; ring

/-- The shell bounds over a box: with `x = M + δ`, `|δ| ≤ 1`. -/
lemma shell_quad_bounds (hGd : 0 < S.Gd) (hG : GramOf S T) {x M δ : Fin 4 → ℝ}
    (hx : ∀ a, x a = M a + δ a) (hδ : ∀ a, |δ a| ≤ 1) :
    let GM : Fin 4 → ℝ := fun i => ∑ a : Fin 4, (gi S.GZ (4 * i + a) : ℝ) * M a
    let Q : (Fin 4 → ℝ) → ℝ := fun y => ∑ k, ∑ l, y k * y l * (gi S.GZ (4 * k + l) : ℝ)
    Q M - 2 * ∑ i, |GM i| ≤ Q x ∧ Q x ≤ Q M + 2 * ∑ i, |GM i| + ∑ k : Fin 4, ∑ l : Fin 4, |(gi S.GZ (4 * k + l) : ℝ)| := by
  intro GM Q
  have hGd' : (0 : ℝ) < S.Gd := by exact_mod_cast hGd
  have hsym : ∀ k l : Fin 4, (gi S.GZ (4 * k + l) : ℝ) = gi S.GZ (4 * l + k) := by
    intro k l
    have h1 := hG k l
    have h2 := hG l k
    have : (gi S.GZ (4 * k + l) : ℝ) / S.Gd = (gi S.GZ (4 * l + k) : ℝ) / S.Gd := by
      rw [h1, h2]
      exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun c _ => by ring
    field_simp at this; exact this
  -- `Q` of a Gram matrix is nonnegative
  have hQnn : ∀ y, 0 ≤ Q y := by
    intro y
    have e : Q y = S.Gd * sumsq (tang T y) := by
      rw [sumsq_tang, Finset.mul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [← hG k l]; field_simp
    rw [e]; exact mul_nonneg hGd'.le (sumsq_nonneg _)
  have hexp : Q x = Q M + 2 * ∑ i, δ i * GM i + Q δ := by
    simp only [Q, GM, hx]
    simp only [Fin.sum_univ_four]
    linear_combination (M 0 * δ 1 - δ 0 * M 1) * (hsym 0 1) +
      (M 0 * δ 2 - δ 0 * M 2) * (hsym 0 2) + (M 0 * δ 3 - δ 0 * M 3) * (hsym 0 3) +
      (M 1 * δ 2 - δ 1 * M 2) * (hsym 1 2) + (M 1 * δ 3 - δ 1 * M 3) * (hsym 1 3) +
      (M 2 * δ 3 - δ 2 * M 3) * (hsym 2 3)
  have hlin : |∑ i, δ i * GM i| ≤ ∑ i, |GM i| := by
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
    rw [abs_mul]
    exact mul_le_of_le_one_left (abs_nonneg _) (hδ i)
  have hquad : Q δ ≤ ∑ k : Fin 4, ∑ l : Fin 4, |(gi S.GZ (4 * k + l) : ℝ)| := by
    refine Finset.sum_le_sum fun k _ => Finset.sum_le_sum fun l _ => ?_
    refine (le_abs_self _).trans ?_
    rw [abs_mul, abs_mul]
    have := hδ k; have := hδ l
    have h0 : |δ k| * |δ l| ≤ 1 := mul_le_one₀ (hδ k) (abs_nonneg _) (hδ l)
    exact mul_le_of_le_one_left (abs_nonneg _) h0
  have hq0 := hQnn δ
  constructor
  · rw [hexp]; linarith [neg_abs_le (∑ i, δ i * GM i)]
  · rw [hexp]; linarith [le_abs_self (∑ i, δ i * GM i)]

lemma shellMiss_sound (hGd : 0 < S.Gd) (hE : 0 < S.E) (hG : GramOf S T) (b : Bx) (h : shellMiss S b = true)
    (u : Fin 4 → ℝ) (hu : b.Mem 1 u) :
    ¬ (Real.sqrt (∑ k, ((S.E : ℝ) * u k) ^ 2) ≤ S.rH ∧ (S.lo : ℝ) ≤ sumsq (tang T fun k => (S.E : ℝ) * u k) ∧
      sumsq (tang T fun k => (S.E : ℝ) * u k) ≤ S.hi) := by
  rintro ⟨hr, hlo, hhi⟩
  have hp := two_pow_pos' b.m
  have hE' : (0 : ℝ) < S.E := by exact_mod_cast hE
  have hGd' : (0 : ℝ) < S.Gd := by exact_mod_cast hGd
  -- the box point as `u = (M + δ) / 2^m`
  set M : Fin 4 → ℝ := fun a => ((b.L a + 1 : ℤ) : ℝ)
  set δ : Fin 4 → ℝ := fun a => u a * 2 ^ b.m - M a
  have hx : ∀ a, u a * 2 ^ b.m = M a + δ a := fun a => by simp [δ]
  have hδ : ∀ a, |δ a| ≤ 1 := by
    intro a
    obtain ⟨h1, h2⟩ := hu a
    simp only [Bx.lo, Bx.hi, one_mul, div_le_iff₀ hp, le_div_iff₀ hp] at h1 h2
    simp only [δ, M]; push_cast
    rw [abs_le]; constructor <;> linarith
  obtain ⟨qlo, qhi⟩ := shell_quad_bounds hGd hG hx hδ
  -- `‖T(E u)‖² = E² Q(u 2^m) / (Gd 4^m)`
  have hq : sumsq (tang T fun k => (S.E : ℝ) * u k) = (S.E : ℝ) ^ 2 / (S.Gd * 4 ^ b.m) *
      ∑ k, ∑ l, (u k * 2 ^ b.m) * (u l * 2 ^ b.m) * (gi S.GZ (4 * k + l) : ℝ) := by
    rw [sumsq_tang, Finset.mul_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [← hG k l]
    have h4 : (4 : ℝ) ^ b.m = 2 ^ b.m * 2 ^ b.m := by rw [← mul_pow]; norm_num
    rw [h4]; field_simp
  have hsc : (0 : ℝ) ≤ (S.E : ℝ) ^ 2 / (S.Gd * 4 ^ b.m) := by positivity
  -- the integer quantities of `shellMiss`
  have eGM : ∀ i : Fin 4, ((l4 fun a => gi S.GZ (4 * i + a) * (b.L a + 1)).sum : ℝ) =
      ∑ a : Fin 4, (gi S.GZ (4 * i + a) : ℝ) * M a := by
    intro i
    simp only [M, sum_l4Z, Fin.sum_univ_four, Fin.val_zero, Fin.val_one, Fin.val_two]
    rw [show ((3 : Fin 4) : ℕ) = 3 from rfl]; push_cast; ring
  have emgm : (((l4 fun i => (b.L i + 1) * (l4 fun a => gi S.GZ (4 * i + a) * (b.L a + 1)).sum).sum : ℤ) : ℝ) =
      ∑ k, ∑ l, M k * M l * (gi S.GZ (4 * k + l) : ℝ) := by
    simp only [sum_l4Z]
    push_cast
    have := eGM 0; have := eGM 1; have := eGM 2; have := eGM 3
    simp only [sum_l4Z, Fin.val_zero, Fin.val_one, Fin.val_two] at *
    rw [show ((3 : Fin 4) : ℕ) = 3 from rfl] at *
    push_cast at *
    simp only [M, Fin.sum_univ_four, Fin.val_zero, Fin.val_one, Fin.val_two]
    rw [show ((3 : Fin 4) : ℕ) = 3 from rfl]
    push_cast; ring
  have ea1 : (((l4 fun i => |(l4 fun a => gi S.GZ (4 * i + a) * (b.L a + 1)).sum|).sum : ℤ) : ℝ) =
      ∑ i : Fin 4, |∑ a : Fin 4, (gi S.GZ (4 * i + a) : ℝ) * M a| := by
    simp only [sum_l4Z, ← eGM, Fin.sum_univ_four, Fin.val_zero, Fin.val_one, Fin.val_two]
    rw [show ((3 : Fin 4) : ℕ) = 3 from rfl]; push_cast; ring
  have eaG := l16_absZ S
  simp only [shellMiss, Bool.or_eq_true, decide_eq_true_eq] at h
  have hD : 0 < S.Gd * 4 ^ b.m := by positivity
  have hDc : ((S.Gd * 4 ^ b.m : ℕ) : ℝ) = (S.Gd : ℝ) * 4 ^ b.m := by push_cast; ring
  have cast1 : ∀ (X : ℤ), X * (S.E.num ^ 2 * S.lo.den) < S.lo.num * ((S.Gd * 4 ^ b.m : ℕ) : ℤ) * S.E.den ^ 2 →
      (X : ℝ) * ((S.E : ℝ) ^ 2 / ((S.Gd : ℝ) * 4 ^ b.m)) < S.lo := by
    intro X hX; have := int_test1 hD hX; rwa [hDc] at this
  have cast2 : ∀ (X : ℤ), S.hi.num * ((S.Gd * 4 ^ b.m : ℕ) : ℤ) * S.E.den ^ 2 < X * (S.E.num ^ 2 * S.hi.den) →
      (S.hi : ℝ) < (X : ℝ) * ((S.E : ℝ) ^ 2 / ((S.Gd : ℝ) * 4 ^ b.m)) := by
    intro X hX; have := int_test2 hD hX; rwa [hDc] at this
  rcases h with (h | h) | h
  · -- `max ‖Tη‖² < lo`
    have h' := cast1 _ h
    simp only [Int.cast_add, Int.cast_mul, Int.cast_ofNat] at h'
    rw [emgm, ea1, eaG] at h'
    have : sumsq (tang T fun k => (S.E : ℝ) * u k) < S.lo := by
      rw [hq]
      calc _ ≤ (S.E : ℝ) ^ 2 / (S.Gd * 4 ^ b.m) * (∑ k, ∑ l, M k * M l * (gi S.GZ (4 * k + l) : ℝ) +
            2 * ∑ i : Fin 4, |∑ a : Fin 4, (gi S.GZ (4 * i + a) : ℝ) * M a| +
            ∑ k : Fin 4, ∑ l : Fin 4, |(gi S.GZ (4 * k + l) : ℝ)|) := mul_le_mul_of_nonneg_left qhi hsc
        _ < S.lo := by rw [mul_comm]; exact h'
    linarith
  · -- `min ‖Tη‖² > hi`
    have h' := cast2 _ h
    simp only [Int.cast_sub, Int.cast_mul, Int.cast_ofNat] at h'
    rw [emgm, ea1] at h'
    have : (S.hi : ℝ) < sumsq (tang T fun k => (S.E : ℝ) * u k) := by
      rw [hq]
      calc (S.hi : ℝ) < _ := h'
        _ = (S.E : ℝ) ^ 2 / (S.Gd * 4 ^ b.m) * (∑ k, ∑ l, M k * M l * (gi S.GZ (4 * k + l) : ℝ) -
            2 * ∑ i : Fin 4, |∑ a : Fin 4, (gi S.GZ (4 * i + a) : ℝ) * M a|) := by ring
        _ ≤ _ := mul_le_mul_of_nonneg_left qlo hsc
    linarith
  · -- `min ‖η‖ > r_H`
    have h' := int_test3 h
    rw [show ((b.minSqN : ℕ) : ℝ) = ((b.minSq : ℤ) : ℝ) by rw [← Bx.minSqN_eq]; rfl] at h'
    obtain ⟨hmin, -⟩ := norm_sq_bounds hu
    have h4 : (0 : ℝ) < 4 ^ b.m := by positivity
    rw [div_le_iff₀ h4] at hmin
    have hsum : ∑ k, ((S.E : ℝ) * u k) ^ 2 = (S.E : ℝ) ^ 2 * ∑ k, u k ^ 2 := by
      rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun k _ => by ring
    have hrH : 0 ≤ (S.rH : ℝ) := (Real.sqrt_nonneg _).trans hr
    have h2 : ∑ k, ((S.E : ℝ) * u k) ^ 2 ≤ (S.rH : ℝ) ^ 2 := by
      rw [Real.sqrt_le_left hrH] at hr; exact hr
    rw [hsum] at h2
    have : (S.rH : ℝ) ^ 2 * 4 ^ b.m < (S.E : ℝ) ^ 2 * (∑ k, u k ^ 2 * 4 ^ b.m) := by
      calc (S.rH : ℝ) ^ 2 * 4 ^ b.m < (S.E : ℝ) ^ 2 * b.minSq := h'
        _ ≤ _ := mul_le_mul_of_nonneg_left (by rw [← Finset.sum_mul]; exact hmin) (sq_nonneg _)
    rw [← Finset.sum_mul] at this
    nlinarith

/-- **Record shell coverage** (the `hcover` field of `RecBoundaryCover`, with `lo = R² − n²`, `hi = R²`). -/
theorem shell_cover {maxl : ℕ} {Ls : List Bx} (h : shellOK S maxl Ls = true) (hG : GramOf S T) :
    ∀ η : Fin 4 → ℝ, Real.sqrt (∑ k, η k ^ 2) ≤ S.rH → (S.lo : ℝ) ≤ sumsq (tang T η) →
      sumsq (tang T η) ≤ S.hi → ∃ b ∈ Ls, b.Mem S.E η := by
  simp only [shellOK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨hE, hrE⟩, hGd⟩, hc⟩ := h
  have hE' : (0 : ℝ) < S.E := by exact_mod_cast hE
  have hrE' : (S.rH : ℝ) ≤ S.E := by exact_mod_cast hrE
  intro η hr hlo hhi
  have hw : wnorm η ≤ S.E := hr.trans hrE'
  obtain ⟨hroot, -⟩ := norm_scaled hE' hw
  have hη : ∀ k, (S.E : ℝ) * (η k / S.E) = η k := fun k => by field_simp
  obtain ⟨b, hb, hbm⟩ := cover_sound
    (P := fun u => Real.sqrt (∑ k, ((S.E : ℝ) * u k) ^ 2) ≤ S.rH ∧
      (S.lo : ℝ) ≤ sumsq (tang T fun k => (S.E : ℝ) * u k) ∧ sumsq (tang T fun k => (S.E : ℝ) * u k) ≤ S.hi)
    (shellMiss_sound hGd hE hG) hc _ hroot (by simp only [hη]; exact ⟨hr, hlo, hhi⟩)
  exact ⟨b, hb, (Bx.mem_scale hE').mpr hbm⟩

/-- The same with the record's real `R`, `n`, `r_H` bounded by the rational data. -/
theorem shell_cover' {maxl : ℕ} {Ls : List Bx} (h : shellOK S maxl Ls = true) (hG : GramOf S T)
    {R n rH : ℝ} (hrH : rH ≤ S.rH) (hlo : (S.lo : ℝ) ≤ R ^ 2 - n ^ 2) (hhi : R ^ 2 ≤ S.hi) :
    ∀ η : Fin 4 → ℝ, Real.sqrt (∑ k, η k ^ 2) ≤ rH → R ^ 2 - n ^ 2 ≤ sumsq (tang T η) →
      sumsq (tang T η) ≤ R ^ 2 → ∃ b ∈ Ls, b.Mem S.E η :=
  fun η h1 h2 h3 => shell_cover h hG η (h1.trans hrH) (hlo.trans h2) (h3.trans hhi)

end Shell

/-! ### The Gram matrix of a rational frame -/

/-- `Σ_{a ∈ I6} f a` over `ℚ`. -/
def q6 (f : I6 → ℚ) : ℚ := f (.inl 0) + f (.inl 1) + f (.inl 2) + f (.inr 0) + f (.inr 1) + f (.inr 2)

def all4F (f : Fin 4 → Bool) : Bool := f 0 && f 1 && f 2 && f 3

lemma all4F_spec {f : Fin 4 → Bool} (h : all4F f = true) : ∀ k, f k = true := by
  simp only [all4F, Bool.and_eq_true] at h
  intro k; fin_cases k
  exacts [h.1.1.1, h.1.1.2, h.1.2, h.2]

/-- `GZ_kl = Gd · ⟨T_k, T_l⟩` exactly, for a rational frame `T`. -/
def gramOK (T : Fin 4 → I6 → I6 → ℚ) (S : ShellD) : Bool :=
  all4F fun k => all4F fun l =>
    decide ((gi S.GZ (4 * k + l) : ℚ) = S.Gd * q6 fun a => q6 fun c => T k a c * T l a c)

/-- The real frame of a rational frame. -/
def qR (T : Fin 4 → I6 → I6 → ℚ) : Fin 4 → RMat6 := fun k a c => (T k a c : ℝ)

lemma q6_cast (f : I6 → ℚ) : ((q6 f : ℚ) : ℝ) = ∑ j, (f j : ℝ) := by
  rw [Fintype.sum_sum_type, Fin.sum_univ_three, Fin.sum_univ_three]
  simp only [q6]; push_cast; ring

theorem gramOf_of_gramOK {T : Fin 4 → I6 → I6 → ℚ} {S : ShellD} (h : gramOK T S = true) (hGd : 0 < S.Gd) :
    GramOf S (qR T) := by
  intro k l
  have h1 := of_decide_eq_true (all4F_spec (all4F_spec h k) l)
  have hR : ((gi S.GZ (4 * k + l) : ℤ) : ℝ) = (S.Gd : ℝ) * ∑ a, ∑ c, (T k a c : ℝ) * (T l a c : ℝ) := by
    have := congrArg (fun x : ℚ => (x : ℝ)) h1
    simp only [Rat.cast_intCast, Rat.cast_mul, Rat.cast_natCast, q6_cast] at this
    rw [this]
  have hGd' : (S.Gd : ℝ) ≠ 0 := by exact_mod_cast hGd.ne'
  rw [hR, mul_div_cancel_left₀ _ hGd']
  rfl

end NoFourMUBs.KernelAtlas.Seed
