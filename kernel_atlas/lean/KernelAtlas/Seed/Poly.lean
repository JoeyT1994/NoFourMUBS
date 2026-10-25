import KernelAtlas.Trig
import NoFourMUBs.SeedAtlas.Method.Bounds

/-!
# Fixed-point second-order Taylor models for the kernel (seed atlas, `KERNEL_SEED.md` §3)

A Taylor model `T : CT` in four variables `u ∈ ∏ⱼ [−hⱼ, hⱼ]` is a list of 15 complex coefficients on the grid `2^{-pp}`
(monomials `1, u₀, …, u₃, u₀u₀, u₀u₁, …, u₃u₃`, `mono`) and a remainder `ρ : ℕ` on the same grid.  Its semantics is
pointwise: `T.Has u x` says `‖x − T(u)‖ ≤ ρ / 2^pp`.  Real quantities are models with zero imaginary parts.

Every operation is a computable function on integers (the kernel runs it with `decide +kernel`) with a soundness lemma:
`add`, `neg`, `sub`, `conj`, `re`, `im`, `const`, the bound `bnd` (`‖x‖ ≤ bnd`), `smul` (by a grid constant), `mul`
(degree `≤ 2` kept and rounded down to the grid, degree `≥ 3` and the rounding moved into `ρ`, complex moduli bounded by
`max + min/2`), `expI` (`e^{i·}` of a real model, `KernelAtlas.cisRound` for the constant and
`Method.norm_exp_I_taylor2_le` for the remainder) and `argT` (`Method.exists_arg_one_add`).
-/

open Complex

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Grid values -/

/-- The fixed-point precision. -/
def pp : ℕ := 60

/-- A complex grid value `(a + ib)/2^pp`. -/
def cz (z : ℤ × ℤ) : ℂ := ((z.1 : ℂ) + (z.2 : ℂ) * I) / 2 ^ pp

/-- A non-negative grid value `a/2^pp`. -/
def rn (a : ℕ) : ℝ := (a : ℝ) / 2 ^ pp

lemma two_pow_pos (k : ℕ) : (0 : ℝ) < 2 ^ k := by positivity

lemma rn_nonneg (a : ℕ) : 0 ≤ rn a := by unfold rn; positivity

lemma rn_add (a b : ℕ) : rn (a + b) = rn a + rn b := by unfold rn; push_cast; ring

lemma rn_mono {a b : ℕ} (h : a ≤ b) : rn a ≤ rn b := by
  unfold rn; gcongr

/-- Ceiling division by `2^k`. -/
def cdivN (a k : ℕ) : ℕ := (a + (2 ^ k - 1)) / 2 ^ k

lemma cdivN_spec (a k : ℕ) : (a : ℝ) / 2 ^ k ≤ cdivN a k := by
  have hk : 0 < 2 ^ k := pow_pos (by norm_num) k
  have h1 : a ≤ cdivN a k * 2 ^ k := by
    unfold cdivN
    have := Nat.div_add_mod (a + (2 ^ k - 1)) (2 ^ k)
    have hm := Nat.mod_lt (a + (2 ^ k - 1)) hk
    rw [mul_comm]; omega
  rw [div_le_iff₀ (by positivity)]
  exact_mod_cast h1

/-- Rounding down to the grid: `a / 2^k` (floor). -/
def fdivZ (a : ℤ) (k : ℕ) : ℤ := a / 2 ^ k

lemma fdivZ_spec (a : ℤ) (k : ℕ) : |(a : ℝ) / 2 ^ k - fdivZ a k| ≤ 1 := by
  have hk : (0 : ℤ) < 2 ^ k := by positivity
  have h1 := Int.mul_ediv_add_emod a (2 ^ k)
  have h2 := Int.emod_nonneg a hk.ne'
  have h3 := Int.emod_lt_of_pos a hk
  set q := a / 2 ^ k
  set r := a % 2 ^ k
  have hk' : (0 : ℝ) < 2 ^ k := by positivity
  have e : (a : ℝ) / 2 ^ k - q = (r : ℝ) / 2 ^ k := by
    have : (a : ℝ) = 2 ^ k * q + r := by exact_mod_cast h1.symm
    rw [this]; field_simp; ring
  unfold fdivZ
  rw [e, abs_of_nonneg (div_nonneg (by exact_mod_cast h2) hk'.le)]
  rw [div_le_one hk']
  have : (r : ℝ) < 2 ^ k := by exact_mod_cast h3
  linarith

/-- An upper bound of `|a + ib|`: `max + min/2`, rounded up. -/
def mb (z : ℤ × ℤ) : ℕ := max z.1.natAbs z.2.natAbs + (min z.1.natAbs z.2.natAbs + 1) / 2

lemma sq_add_sq_le_mb (a b : ℝ) (ha : 0 ≤ a) (hb : 0 ≤ b) :
    a ^ 2 + b ^ 2 ≤ (max a b + min a b / 2) ^ 2 := by
  rcases le_total a b with h | h
  · rw [max_eq_right h, min_eq_left h]; nlinarith
  · rw [max_eq_left h, min_eq_right h]; nlinarith

lemma cz_eq (z : ℤ × ℤ) : cz z = (((z.1 : ℝ) / 2 ^ pp : ℝ) : ℂ) + (((z.2 : ℝ) / 2 ^ pp : ℝ) : ℂ) * I := by
  unfold cz; push_cast; ring

lemma norm_le_mb (z : ℤ × ℤ) : ‖((z.1 : ℂ) + (z.2 : ℂ) * I)‖ ≤ (mb z : ℝ) := by
  set x : ℝ := (z.1.natAbs : ℝ); set y : ℝ := (z.2.natAbs : ℝ)
  have hx : |(z.1 : ℝ)| = x := by simp [x, Nat.cast_natAbs]
  have hy : |(z.2 : ℝ)| = y := by simp [y, Nat.cast_natAbs]
  have hn : ‖((z.1 : ℂ) + (z.2 : ℂ) * I)‖ = Real.sqrt (x ^ 2 + y ^ 2) := by
    rw [← hx, ← hy, sq_abs, sq_abs]
    have : ((z.1 : ℂ) + (z.2 : ℂ) * I) = ⟨(z.1 : ℝ), (z.2 : ℝ)⟩ := by apply Complex.ext <;> simp
    rw [this, Complex.norm_def, Complex.normSq_mk]; congr 1; ring
  rw [hn]
  apply Real.sqrt_le_iff.mpr
  refine ⟨by positivity, ?_⟩
  have hx0 : 0 ≤ x := by positivity
  have hy0 : 0 ≤ y := by positivity
  have hmb : max x y + min x y / 2 ≤ (mb z : ℝ) := by
    unfold mb
    have e1 : ((max z.1.natAbs z.2.natAbs : ℕ) : ℝ) = max x y := Nat.cast_max _ _
    have e2 : ((min z.1.natAbs z.2.natAbs : ℕ) : ℝ) = min x y := Nat.cast_min _ _
    have h2 : min x y / 2 ≤ (((min z.1.natAbs z.2.natAbs + 1) / 2 : ℕ) : ℝ) := by
      have : min z.1.natAbs z.2.natAbs ≤ 2 * ((min z.1.natAbs z.2.natAbs + 1) / 2) := by omega
      have : ((min z.1.natAbs z.2.natAbs : ℕ) : ℝ) ≤ 2 * (((min z.1.natAbs z.2.natAbs + 1) / 2 : ℕ) : ℝ) := by
        exact_mod_cast this
      rw [e2] at this; linarith
    push_cast [e1]; linarith
  exact (sq_add_sq_le_mb x y hx0 hy0).trans (pow_le_pow_left₀ (by positivity) hmb 2)

lemma norm_cz_le (z : ℤ × ℤ) : ‖cz z‖ ≤ rn (mb z) := by
  unfold cz rn
  rw [norm_div, norm_pow, Complex.norm_two]
  exact div_le_div_of_nonneg_right (norm_le_mb z) (by positivity)

/-! ### Monomials and the box -/

/-- The box `|uⱼ| ≤ hⱼ / 2^pp`. -/
def InBox (h : List ℕ) (u : Fin 4 → ℝ) : Prop := ∀ j : Fin 4, |u j| ≤ rn (h.getD j 0)

/-- `uⱼ` with a natural index. -/
def uv (u : Fin 4 → ℝ) (j : ℕ) : ℝ := if hj : j < 4 then u ⟨j, hj⟩ else 0

/-- The variable pair of the quadratic monomial `m ∈ [5, 14]`. -/
def qpair (m : ℕ) : ℕ × ℕ :=
  match m with
  | 5 => (0, 0) | 6 => (0, 1) | 7 => (0, 2) | 8 => (0, 3) | 9 => (1, 1) | 10 => (1, 2) | 11 => (1, 3)
  | 12 => (2, 2) | 13 => (2, 3) | _ => (3, 3)

def deg (m : ℕ) : ℕ := if m = 0 then 0 else if m ≤ 4 then 1 else 2

/-- The monomials: `1`, `uⱼ` (`m = j + 1`), `u_a u_b` (`m ≥ 5`, `qpair`). -/
def mono (m : ℕ) (u : Fin 4 → ℝ) : ℝ :=
  if m = 0 then 1 else if m ≤ 4 then uv u (m - 1) else uv u (qpair m).1 * uv u (qpair m).2

/-- The bound of `|mono m|` on the box, on the grid `2^{-pp·deg m}`. -/
def monoW (h : List ℕ) (m : ℕ) : ℕ :=
  if m = 0 then 1 else if m ≤ 4 then h.getD (m - 1) 0 else h.getD (qpair m).1 0 * h.getD (qpair m).2 0

lemma abs_uv_le {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (j : ℕ) : |uv u j| ≤ rn (h.getD j 0) := by
  unfold uv
  split_ifs with hj
  · exact hu ⟨j, hj⟩
  · simp only [abs_zero]; exact rn_nonneg _

lemma abs_mono_le {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (m : ℕ) :
    |mono m u| ≤ (monoW h m : ℝ) / 2 ^ (pp * deg m) := by
  unfold mono monoW deg
  split_ifs with h0 h1
  · simp
  · simp only [mul_one]; exact abs_uv_le hu _
  · rw [abs_mul]
    have a1 := abs_uv_le hu (qpair m).1
    have a2 := abs_uv_le hu (qpair m).2
    calc |uv u (qpair m).1| * |uv u (qpair m).2| ≤ rn (h.getD (qpair m).1 0) * rn (h.getD (qpair m).2 0) :=
          mul_le_mul a1 a2 (abs_nonneg _) (rn_nonneg _)
      _ = _ := by unfold rn; push_cast; rw [pow_mul, pow_two]; ring

/-! ### Taylor models -/

/-- A Taylor model: 15 grid coefficients and a grid remainder. -/
structure CT where
  c0 : ℤ × ℤ
  c1 : ℤ × ℤ
  c2 : ℤ × ℤ
  c3 : ℤ × ℤ
  c4 : ℤ × ℤ
  c5 : ℤ × ℤ
  c6 : ℤ × ℤ
  c7 : ℤ × ℤ
  c8 : ℤ × ℤ
  c9 : ℤ × ℤ
  c10 : ℤ × ℤ
  c11 : ℤ × ℤ
  c12 : ℤ × ℤ
  c13 : ℤ × ℤ
  c14 : ℤ × ℤ
  ρ : ℕ
  deriving DecidableEq

/-- The `m`-th coefficient. -/
def CT.cg (T : CT) (m : ℕ) : ℤ × ℤ :=
  match m with
  | 0 => T.c0 | 1 => T.c1 | 2 => T.c2 | 3 => T.c3 | 4 => T.c4 | 5 => T.c5 | 6 => T.c6 | 7 => T.c7
  | 8 => T.c8 | 9 => T.c9 | 10 => T.c10 | 11 => T.c11 | 12 => T.c12 | 13 => T.c13 | 14 => T.c14 | _ => (0, 0)

/-- The model's polynomial at `u`. -/
def CT.eval (T : CT) (u : Fin 4 → ℝ) : ℂ := ∑ m ∈ Finset.range 15, cz (T.cg m) * (mono m u : ℂ)

/-- `x` is enclosed by `T` at `u`. -/
def CT.Has (T : CT) (u : Fin 4 → ℝ) (x : ℂ) : Prop := ‖x - T.eval u‖ ≤ rn T.ρ

/-- A model from a coefficient function. -/
def mk (f : ℕ → ℤ × ℤ) (ρ : ℕ) : CT :=
  ⟨f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7, f 8, f 9, f 10, f 11, f 12, f 13, f 14, ρ⟩

lemma cg_mk (f : ℕ → ℤ × ℤ) (ρ : ℕ) {m : ℕ} (hm : m < 15) : (mk f ρ).cg m = f m := by
  interval_cases m <;> rfl

lemma eval_mk (f : ℕ → ℤ × ℤ) (ρ : ℕ) (u : Fin 4 → ℝ) :
    (mk f ρ).eval u = ∑ m ∈ Finset.range 15, cz (f m) * (mono m u : ℂ) :=
  Finset.sum_congr rfl fun m hm => by rw [cg_mk f ρ (Finset.mem_range.1 hm)]

/-! ### The constant and the variation bound -/

/-- The bound of `|c_m mono_m|`, `m ≥ 1`, on the grid. -/
def termB (h : List ℕ) (a : ℕ) (m : ℕ) : ℕ := cdivN (a * monoW h m) (pp * deg m)

lemma termB_spec {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (z : ℤ × ℤ) (m : ℕ) :
    ‖cz z * (mono m u : ℂ)‖ ≤ rn (termB h (mb z) m) := by
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
  have h1 := norm_cz_le z
  have h2 := abs_mono_le hu m
  calc ‖cz z‖ * |mono m u| ≤ rn (mb z) * ((monoW h m : ℝ) / 2 ^ (pp * deg m)) :=
        mul_le_mul h1 h2 (abs_nonneg _) (rn_nonneg _)
    _ = ((mb z * monoW h m : ℕ) : ℝ) / 2 ^ (pp * deg m) / 2 ^ pp := by unfold rn; push_cast; ring
    _ ≤ rn (termB h (mb z) m) := by
        unfold rn termB
        exact div_le_div_of_nonneg_right (cdivN_spec _ _) (by positivity)

lemma list_sum_map_range (n : ℕ) (f : ℕ → ℕ) :
    (((List.range n).map f).sum : ℝ) = ∑ m ∈ Finset.range n, (f m : ℝ) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [List.range_succ, List.map_append, List.sum_append, Nat.cast_add, ih, Finset.sum_range_succ]; simp

/-- The linear and quadratic parts of a model's polynomial. -/
def linP (T : CT) (u : Fin 4 → ℝ) : ℂ := ∑ j ∈ Finset.range 4, cz (T.cg (j + 1)) * (mono (j + 1) u : ℂ)
def quadP (T : CT) (u : Fin 4 → ℝ) : ℂ := ∑ k ∈ Finset.range 10, cz (T.cg (k + 5)) * (mono (k + 5) u : ℂ)

lemma eval_split (T : CT) (u : Fin 4 → ℝ) : T.eval u = cz (T.cg 0) + linP T u + quadP T u := by
  simp only [CT.eval, linP, quadP, Finset.sum_range_succ, Finset.sum_range_zero, zero_add]
  simp [mono]
  ring

/-- `Σⱼ |gⱼ| hⱼ` and `Σ |H_m| sup|mono_m|` on the grid. -/
def L1T (h : List ℕ) (T : CT) : ℕ := ((List.range 4).map fun j => termB h (mb (T.cg (j + 1))) (j + 1)).sum
def L2T (h : List ℕ) (T : CT) : ℕ := ((List.range 10).map fun k => termB h (mb (T.cg (k + 5))) (k + 5)).sum

lemma norm_linP_le {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (T : CT) : ‖linP T u‖ ≤ rn (L1T h T) := by
  refine (norm_sum_le _ _).trans ?_
  have : rn (L1T h T) = ∑ j ∈ Finset.range 4, rn (termB h (mb (T.cg (j + 1))) (j + 1)) := by
    unfold L1T rn; rw [list_sum_map_range, Finset.sum_div]
  rw [this]
  exact Finset.sum_le_sum fun j _ => termB_spec hu _ _

lemma norm_quadP_le {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (T : CT) : ‖quadP T u‖ ≤ rn (L2T h T) := by
  refine (norm_sum_le _ _).trans ?_
  have : rn (L2T h T) = ∑ k ∈ Finset.range 10, rn (termB h (mb (T.cg (k + 5))) (k + 5)) := by
    unfold L2T rn; rw [list_sum_map_range, Finset.sum_div]
  rw [this]
  exact Finset.sum_le_sum fun k _ => termB_spec hu _ _

/-- `Σ_{m ≥ 1} |c_m| sup|mono_m|` on the grid. -/
def Lsum (h : List ℕ) (T : CT) : ℕ := L1T h T + L2T h T

lemma norm_eval_sub_c_le {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (T : CT) :
    ‖T.eval u - cz (T.cg 0)‖ ≤ rn (Lsum h T) := by
  rw [eval_split, show cz (T.cg 0) + linP T u + quadP T u - cz (T.cg 0) = linP T u + quadP T u by ring, Lsum, rn_add]
  exact (norm_add_le _ _).trans (add_le_add (norm_linP_le hu T) (norm_quadP_le hu T))

/-- The sup bound `|c₀| + L + ρ`. -/
def bnd (h : List ℕ) (T : CT) : ℕ := mb (T.cg 0) + Lsum h T + T.ρ

lemma norm_le_bnd {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {T : CT} {x : ℂ} (hx : T.Has u x) :
    ‖x‖ ≤ rn (bnd h T) := by
  have e : x = cz (T.cg 0) + (T.eval u - cz (T.cg 0)) + (x - T.eval u) := by ring
  rw [e]
  refine (norm_add₃_le).trans ?_
  unfold bnd
  rw [rn_add, rn_add]
  exact add_le_add (add_le_add (norm_cz_le _) (norm_eval_sub_c_le hu T)) hx

/-- The variation bound `‖x − c₀‖ ≤ L + ρ`. -/
lemma norm_sub_c_le {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {T : CT} {x : ℂ} (hx : T.Has u x) :
    ‖x - cz (T.cg 0)‖ ≤ rn (Lsum h T + T.ρ) := by
  have e : x - cz (T.cg 0) = (T.eval u - cz (T.cg 0)) + (x - T.eval u) := by ring
  rw [e, rn_add]
  exact (norm_add_le _ _).trans (add_le_add (norm_eval_sub_c_le hu T) hx)

/-! ### Exact linear operations -/

def zadd (a b : ℤ × ℤ) : ℤ × ℤ := (a.1 + b.1, a.2 + b.2)
def zneg (a : ℤ × ℤ) : ℤ × ℤ := (-a.1, -a.2)
def zconj (a : ℤ × ℤ) : ℤ × ℤ := (a.1, -a.2)

lemma cz_add (a b : ℤ × ℤ) : cz (zadd a b) = cz a + cz b := by unfold cz zadd; push_cast; ring
lemma cz_neg (a : ℤ × ℤ) : cz (zneg a) = -cz a := by unfold cz zneg; push_cast; ring
lemma cz_conj (a : ℤ × ℤ) : cz (zconj a) = (starRingEnd ℂ) (cz a) := by
  rw [cz_eq, cz_eq]
  simp only [zconj, map_add, map_mul, Complex.conj_ofReal, Complex.conj_I]
  push_cast; ring

def add (A B : CT) : CT := mk (fun m => zadd (A.cg m) (B.cg m)) (A.ρ + B.ρ)
def neg (A : CT) : CT := mk (fun m => zneg (A.cg m)) A.ρ
def sub (A B : CT) : CT := add A (neg B)
def conj (A : CT) : CT := mk (fun m => zconj (A.cg m)) A.ρ
/-- The real part (coefficientwise). -/
def re (A : CT) : CT := mk (fun m => ((A.cg m).1, 0)) A.ρ
/-- The imaginary part (coefficientwise). -/
def im (A : CT) : CT := mk (fun m => ((A.cg m).2, 0)) A.ρ
/-- A constant. -/
def const (z : ℤ × ℤ) : CT := mk (fun m => if m = 0 then z else (0, 0)) 0

lemma eval_add (A B : CT) (u : Fin 4 → ℝ) : (add A B).eval u = A.eval u + B.eval u := by
  rw [add, eval_mk, CT.eval, CT.eval, ← Finset.sum_add_distrib]
  exact Finset.sum_congr rfl fun m _ => by rw [cz_add]; ring

lemma eval_neg (A : CT) (u : Fin 4 → ℝ) : (neg A).eval u = -A.eval u := by
  rw [neg, eval_mk, CT.eval, ← Finset.sum_neg_distrib]
  exact Finset.sum_congr rfl fun m _ => by rw [cz_neg]; ring

lemma eval_conj (A : CT) (u : Fin 4 → ℝ) : (conj A).eval u = (starRingEnd ℂ) (A.eval u) := by
  rw [conj, eval_mk, CT.eval, map_sum]
  exact Finset.sum_congr rfl fun m _ => by rw [cz_conj, map_mul, Complex.conj_ofReal]

lemma cz_re (a : ℤ × ℤ) : cz (a.1, 0) = ((cz a).re : ℂ) := by
  rw [cz_eq, cz_eq]
  apply Complex.ext <;> simp only [Complex.add_re, Complex.add_im, Complex.mul_re, Complex.mul_im,
    Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im] <;> push_cast <;> ring

lemma cz_im (a : ℤ × ℤ) : cz (a.2, 0) = ((cz a).im : ℂ) := by
  rw [cz_eq, cz_eq]
  apply Complex.ext <;> simp only [Complex.add_re, Complex.add_im, Complex.mul_re, Complex.mul_im,
    Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im] <;> push_cast <;> ring

lemma eval_re (A : CT) (u : Fin 4 → ℝ) : (re A).eval u = ((A.eval u).re : ℂ) := by
  rw [re, eval_mk, CT.eval, Complex.re_sum]
  push_cast
  exact Finset.sum_congr rfl fun m _ => by rw [cz_re, Complex.re_mul_ofReal]; push_cast; ring

lemma eval_im (A : CT) (u : Fin 4 → ℝ) : (im A).eval u = ((A.eval u).im : ℂ) := by
  rw [im, eval_mk, CT.eval, Complex.im_sum]
  push_cast
  exact Finset.sum_congr rfl fun m _ => by rw [cz_im, Complex.im_mul_ofReal]; push_cast; ring

lemma eval_const (z : ℤ × ℤ) (u : Fin 4 → ℝ) : (const z).eval u = cz z := by
  rw [const, eval_mk, Finset.sum_range_succ']
  simp [mono, cz]

theorem has_add {A B : CT} {u : Fin 4 → ℝ} {x y : ℂ} (hx : A.Has u x) (hy : B.Has u y) :
    (add A B).Has u (x + y) := by
  unfold CT.Has at *
  rw [eval_add, show x + y - (A.eval u + B.eval u) = (x - A.eval u) + (y - B.eval u) by ring]
  refine (norm_add_le _ _).trans ?_
  rw [show (add A B).ρ = A.ρ + B.ρ from rfl, rn_add]; exact add_le_add hx hy

theorem has_neg {A : CT} {u : Fin 4 → ℝ} {x : ℂ} (hx : A.Has u x) : (neg A).Has u (-x) := by
  unfold CT.Has at *
  rw [eval_neg, show -x - -A.eval u = -(x - A.eval u) by ring, norm_neg]; exact hx

theorem has_sub {A B : CT} {u : Fin 4 → ℝ} {x y : ℂ} (hx : A.Has u x) (hy : B.Has u y) :
    (sub A B).Has u (x - y) := by
  rw [sub_eq_add_neg]; exact has_add hx (has_neg hy)

theorem has_conj {A : CT} {u : Fin 4 → ℝ} {x : ℂ} (hx : A.Has u x) :
    (conj A).Has u ((starRingEnd ℂ) x) := by
  unfold CT.Has at *
  rw [eval_conj, ← map_sub, Complex.norm_conj]; exact hx

theorem has_re {A : CT} {u : Fin 4 → ℝ} {x : ℂ} (hx : A.Has u x) : (re A).Has u (x.re : ℂ) := by
  unfold CT.Has at *
  rw [eval_re, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs, ← Complex.sub_re]
  exact (Complex.abs_re_le_norm _).trans hx

theorem has_im {A : CT} {u : Fin 4 → ℝ} {x : ℂ} (hx : A.Has u x) : (im A).Has u (x.im : ℂ) := by
  unfold CT.Has at *
  rw [eval_im, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs, ← Complex.sub_im]
  exact (Complex.abs_im_le_norm _).trans hx

theorem has_const (z : ℤ × ℤ) (u : Fin 4 → ℝ) : (const z).Has u (cz z) := by
  unfold CT.Has; rw [eval_const, sub_self, norm_zero]; exact rn_nonneg _

/-- Enlarging the remainder. -/
def addRho (A : CT) (e : ℕ) : CT := { A with ρ := A.ρ + e }

theorem has_addRho {A : CT} {u : Fin 4 → ℝ} {x y : ℂ} {e : ℕ} (hx : A.Has u x) (hxy : ‖y - x‖ ≤ rn e) :
    (addRho A e).Has u y := by
  unfold CT.Has at *
  show ‖y - A.eval u‖ ≤ rn (A.ρ + e)
  rw [rn_add, show y - A.eval u = (x - A.eval u) + (y - x) by ring]
  exact (norm_add_le _ _).trans (add_le_add hx hxy)

/-! ### Products -/

def zmul (a b : ℤ × ℤ) : ℤ × ℤ := (a.1 * b.1 - a.2 * b.2, a.1 * b.2 + a.2 * b.1)

/-- A complex value on the grid `2^{-2pp}`. -/
def cz2 (w : ℤ × ℤ) : ℂ := ((w.1 : ℂ) + (w.2 : ℂ) * I) / 2 ^ (2 * pp)

lemma cz_mul (a b : ℤ × ℤ) : cz a * cz b = cz2 (zmul a b) := by
  unfold cz cz2 zmul; push_cast
  rw [pow_mul', show ((2 : ℂ) ^ pp) ^ 2 = 2 ^ pp * 2 ^ pp by ring]
  field_simp
  linear_combination (↑a.2 * ↑b.2 : ℂ) * Complex.I_sq

/-- Rounding a `2^{-2pp}` value down to the grid. -/
def rnd2 (w : ℤ × ℤ) : ℤ × ℤ := (fdivZ w.1 pp, fdivZ w.2 pp)

lemma cz2_eq (w : ℤ × ℤ) :
    cz2 w = ((((w.1 : ℝ) / 2 ^ pp) / 2 ^ pp : ℝ) : ℂ) + ((((w.2 : ℝ) / 2 ^ pp) / 2 ^ pp : ℝ) : ℂ) * I := by
  unfold cz2; push_cast; rw [pow_mul', show ((2 : ℂ) ^ pp) ^ 2 = 2 ^ pp * 2 ^ pp by ring]; field_simp

lemma norm_re_im_le (a b : ℝ) : ‖(a : ℂ) + (b : ℂ) * I‖ ≤ |a| + |b| := by
  refine (norm_add_le _ _).trans (le_of_eq ?_)
  rw [norm_mul, Complex.norm_I, mul_one, Complex.norm_real, Complex.norm_real, Real.norm_eq_abs, Real.norm_eq_abs]

lemma norm_cz2_sub_rnd2 (w : ℤ × ℤ) : ‖cz2 w - cz (rnd2 w)‖ ≤ rn 2 := by
  rw [cz2_eq, cz_eq]
  have e : ((((w.1 : ℝ) / 2 ^ pp) / 2 ^ pp : ℝ) : ℂ) + ((((w.2 : ℝ) / 2 ^ pp) / 2 ^ pp : ℝ) : ℂ) * I -
      ((((rnd2 w).1 : ℝ) / 2 ^ pp : ℝ) + ((((rnd2 w).2 : ℝ) / 2 ^ pp : ℝ) : ℂ) * I) =
      ((((w.1 : ℝ) / 2 ^ pp - (rnd2 w).1) / 2 ^ pp : ℝ) : ℂ) +
        ((((w.2 : ℝ) / 2 ^ pp - (rnd2 w).2) / 2 ^ pp : ℝ) : ℂ) * I := by push_cast; ring
  rw [e]
  refine (norm_re_im_le _ _).trans ?_
  have h1 := fdivZ_spec w.1 pp
  have h2 := fdivZ_spec w.2 pp
  rw [abs_div, abs_div, abs_of_pos (two_pow_pos pp)]
  unfold rn rnd2
  push_cast
  rw [show (2 : ℝ) / 2 ^ pp = 1 / 2 ^ pp + 1 / 2 ^ pp by ring]
  exact add_le_add (div_le_div_of_nonneg_right h1 (two_pow_pos pp).le)
    (div_le_div_of_nonneg_right h2 (two_pow_pos pp).le)

/-- The rounding error of a whole model: `Σ_m 2 · sup|mono_m|`. -/
def rerr (h : List ℕ) : ℕ := ((List.range 15).map fun m => termB h 2 m).sum

lemma norm_round_le {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (w : ℕ → ℤ × ℤ) :
    ‖∑ m ∈ Finset.range 15, (cz2 (w m) - cz (rnd2 (w m))) * (mono m u : ℂ)‖ ≤ rn (rerr h) := by
  refine (norm_sum_le _ _).trans ?_
  have : rn (rerr h) = ∑ m ∈ Finset.range 15, rn (termB h 2 m) := by
    unfold rerr rn; rw [list_sum_map_range, Finset.sum_div]
  rw [this]
  refine Finset.sum_le_sum fun m _ => ?_
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
  have h1 := norm_cz2_sub_rnd2 (w m)
  have h2 := abs_mono_le hu m
  calc ‖cz2 (w m) - cz (rnd2 (w m))‖ * |mono m u| ≤ rn 2 * ((monoW h m : ℝ) / 2 ^ (pp * deg m)) :=
        mul_le_mul h1 h2 (abs_nonneg _) (rn_nonneg _)
    _ = ((2 * monoW h m : ℕ) : ℝ) / 2 ^ (pp * deg m) / 2 ^ pp := by unfold rn; push_cast; ring
    _ ≤ rn (termB h 2 m) := by
        unfold rn termB
        exact div_le_div_of_nonneg_right (cdivN_spec _ _) (by positivity)

/-- Multiplication by a grid constant. -/
def smul (h : List ℕ) (z : ℤ × ℤ) (A : CT) : CT :=
  mk (fun m => rnd2 (zmul z (A.cg m))) (cdivN (mb z * A.ρ) pp + rerr h)

theorem has_smul {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (z : ℤ × ℤ) {A : CT} {x : ℂ}
    (hx : A.Has u x) : (smul h z A).Has u (cz z * x) := by
  unfold CT.Has at *
  have e : cz z * x - (smul h z A).eval u = cz z * (x - A.eval u) +
      ∑ m ∈ Finset.range 15, (cz2 (zmul z (A.cg m)) - cz (rnd2 (zmul z (A.cg m)))) * (mono m u : ℂ) := by
    rw [smul, eval_mk, CT.eval, mul_sub, Finset.mul_sum]
    simp only [sub_mul, Finset.sum_sub_distrib, ← cz_mul]
    ring_nf
  rw [e]
  refine (norm_add_le _ _).trans ?_
  show _ ≤ rn (cdivN (mb z * A.ρ) pp + rerr h)
  rw [rn_add]
  refine add_le_add ?_ (norm_round_le hu _)
  rw [norm_mul]
  calc ‖cz z‖ * ‖x - A.eval u‖ ≤ rn (mb z) * rn A.ρ := mul_le_mul (norm_cz_le z) hx (norm_nonneg _) (rn_nonneg _)
    _ = ((mb z * A.ρ : ℕ) : ℝ) / 2 ^ pp / 2 ^ pp := by unfold rn; push_cast; ring
    _ ≤ rn (cdivN (mb z * A.ρ) pp) := by
        unfold rn; exact div_le_div_of_nonneg_right (cdivN_spec _ _) (by positivity)

/-- The pairs `(m, n)` with `mono m · mono n = mono k` (generated). -/
def plistT (k : ℕ) : List (ℕ × ℕ) :=
  match k with
  | 0 => [(0, 0)]
  | 1 => [(0, 1), (1, 0)]
  | 2 => [(0, 2), (2, 0)]
  | 3 => [(0, 3), (3, 0)]
  | 4 => [(0, 4), (4, 0)]
  | 5 => [(0, 5), (1, 1), (5, 0)]
  | 6 => [(0, 6), (1, 2), (2, 1), (6, 0)]
  | 7 => [(0, 7), (1, 3), (3, 1), (7, 0)]
  | 8 => [(0, 8), (1, 4), (4, 1), (8, 0)]
  | 9 => [(0, 9), (2, 2), (9, 0)]
  | 10 => [(0, 10), (2, 3), (3, 2), (10, 0)]
  | 11 => [(0, 11), (2, 4), (4, 2), (11, 0)]
  | 12 => [(0, 12), (3, 3), (12, 0)]
  | 13 => [(0, 13), (3, 4), (4, 3), (13, 0)]
  | _ => [(0, 14), (4, 4), (14, 0)]

/-- The monomials as explicit products. -/
def monoE (m : ℕ) (u : Fin 4 → ℝ) : ℝ :=
  match m with
  | 0 => 1 | 1 => u 0 | 2 => u 1 | 3 => u 2 | 4 => u 3
  | 5 => u 0 * u 0 | 6 => u 0 * u 1 | 7 => u 0 * u 2 | 8 => u 0 * u 3 | 9 => u 1 * u 1 | 10 => u 1 * u 2
  | 11 => u 1 * u 3 | 12 => u 2 * u 2 | 13 => u 2 * u 3 | 14 => u 3 * u 3 | _ => 0

lemma mono_eq (m : ℕ) (hm : m < 15) (u : Fin 4 → ℝ) : mono m u = monoE m u := by
  interval_cases m <;> simp [mono, monoE, uv, qpair]

set_option maxRecDepth 20000 in
set_option maxHeartbeats 4000000 in
/-- The product of two models' polynomials, regrouped: degree `≤ 2` by `plistT`; the rest is
`lin·quad + quad·lin + quad·quad`. -/
lemma prod_expand (a b : ℕ → ℂ) (u : Fin 4 → ℝ) :
    (∑ m ∈ Finset.range 15, a m * (mono m u : ℂ)) * (∑ n ∈ Finset.range 15, b n * (mono n u : ℂ)) =
      ∑ k ∈ Finset.range 15, ((plistT k).map fun p => a p.1 * b p.2).sum * (mono k u : ℂ) +
        ((∑ j ∈ Finset.range 4, a (j + 1) * (mono (j + 1) u : ℂ)) *
            (∑ k ∈ Finset.range 10, b (k + 5) * (mono (k + 5) u : ℂ)) +
          (∑ k ∈ Finset.range 10, a (k + 5) * (mono (k + 5) u : ℂ)) *
            (∑ j ∈ Finset.range 4, b (j + 1) * (mono (j + 1) u : ℂ)) +
          (∑ k ∈ Finset.range 10, a (k + 5) * (mono (k + 5) u : ℂ)) *
            (∑ k ∈ Finset.range 10, b (k + 5) * (mono (k + 5) u : ℂ))) := by
  have hm : ∀ m < 15, (mono m u : ℂ) = (monoE m u : ℂ) := fun m h => by rw [mono_eq m h]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add]
  simp only [plistT, List.map_cons, List.map_nil, List.sum_cons, List.sum_nil]
  simp only [hm _ (by norm_num : (0:ℕ) < 15), hm _ (by norm_num : (1:ℕ) < 15), hm _ (by norm_num : (2:ℕ) < 15),
    hm _ (by norm_num : (3:ℕ) < 15), hm _ (by norm_num : (4:ℕ) < 15), hm _ (by norm_num : (5:ℕ) < 15),
    hm _ (by norm_num : (6:ℕ) < 15), hm _ (by norm_num : (7:ℕ) < 15), hm _ (by norm_num : (8:ℕ) < 15),
    hm _ (by norm_num : (9:ℕ) < 15), hm _ (by norm_num : (10:ℕ) < 15), hm _ (by norm_num : (11:ℕ) < 15),
    hm _ (by norm_num : (12:ℕ) < 15), hm _ (by norm_num : (13:ℕ) < 15), hm _ (by norm_num : (14:ℕ) < 15)]
  norm_num
  simp only [monoE]
  push_cast
  ring

/-- The exact degree-`≤ 2` coefficient `k` of a product, on the grid `2^{-2pp}`. -/
def lowC (A B : CT) (k : ℕ) : ℤ × ℤ :=
  ((plistT k).map fun p => zmul (A.cg p.1) (B.cg p.2)).foldr zadd (0, 0)

lemma cz2_zadd (a b : ℤ × ℤ) : cz2 (zadd a b) = cz2 a + cz2 b := by unfold cz2 zadd; push_cast; ring

lemma cz2_lowC (A B : CT) (k : ℕ) :
    cz2 (lowC A B k) = ((plistT k).map fun p => cz (A.cg p.1) * cz (B.cg p.2)).sum := by
  unfold lowC
  induction (plistT k) with
  | nil => simp [cz2]
  | cons p l ih => simp only [List.map_cons, List.foldr_cons, List.sum_cons, cz2_zadd, ih, cz_mul]

/-- The bound of the dropped products of degree `≥ 3`: `L₁L₂' + L₂L₁' + L₂L₂'`. -/
def hiB (h : List ℕ) (A B : CT) : ℕ :=
  cdivN (L1T h A * L2T h B + L2T h A * L1T h B + L2T h A * L2T h B) pp

lemma norm_hi_le {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (A B : CT) :
    ‖linP A u * quadP B u + quadP A u * linP B u + quadP A u * quadP B u‖ ≤ rn (hiB h A B) := by
  have a1 := norm_linP_le hu A
  have a2 := norm_quadP_le hu A
  have b1 := norm_linP_le hu B
  have b2 := norm_quadP_le hu B
  refine (norm_add₃_le).trans ?_
  rw [norm_mul, norm_mul, norm_mul]
  calc ‖linP A u‖ * ‖quadP B u‖ + ‖quadP A u‖ * ‖linP B u‖ + ‖quadP A u‖ * ‖quadP B u‖
      ≤ rn (L1T h A) * rn (L2T h B) + rn (L2T h A) * rn (L1T h B) + rn (L2T h A) * rn (L2T h B) := by
        have e1 := mul_le_mul a1 b2 (norm_nonneg _) (rn_nonneg _)
        have e2 := mul_le_mul a2 b1 (norm_nonneg _) (rn_nonneg _)
        have e3 := mul_le_mul a2 b2 (norm_nonneg _) (rn_nonneg _)
        linarith
    _ = ((L1T h A * L2T h B + L2T h A * L1T h B + L2T h A * L2T h B : ℕ) : ℝ) / 2 ^ pp / 2 ^ pp := by
        unfold rn; push_cast; ring
    _ ≤ _ := by unfold rn hiB; exact div_le_div_of_nonneg_right (cdivN_spec _ _) (by positivity)

/-- The sup bound of a model's polynomial. -/
def sB (h : List ℕ) (A : CT) : ℕ := mb (A.cg 0) + Lsum h A

lemma norm_eval_le {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (A : CT) : ‖A.eval u‖ ≤ rn (sB h A) := by
  have e : A.eval u = cz (A.cg 0) + (A.eval u - cz (A.cg 0)) := by ring
  rw [e, sB, rn_add]
  exact (norm_add_le _ _).trans (add_le_add (norm_cz_le _) (norm_eval_sub_c_le hu A))

/-- **The product.** -/
def mul (h : List ℕ) (A B : CT) : CT :=
  mk (fun k => rnd2 (lowC A B k))
    (hiB h A B + rerr h + cdivN (sB h A * B.ρ + A.ρ * sB h B + A.ρ * B.ρ) pp)

theorem has_mul {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {A B : CT} {x y : ℂ} (hx : A.Has u x)
    (hy : B.Has u y) : (mul h A B).Has u (x * y) := by
  unfold CT.Has at *
  have hpe := prod_expand (fun m => cz (A.cg m)) (fun n => cz (B.cg n)) u
  have hAB : A.eval u * B.eval u = ∑ k ∈ Finset.range 15, cz2 (lowC A B k) * (mono k u : ℂ) +
      (linP A u * quadP B u + quadP A u * linP B u + quadP A u * quadP B u) := by
    rw [CT.eval, CT.eval, hpe]
    congr 1
    exact Finset.sum_congr rfl fun k _ => by rw [cz2_lowC]
  have hmul : (mul h A B).eval u = ∑ k ∈ Finset.range 15, cz (rnd2 (lowC A B k)) * (mono k u : ℂ) := by
    rw [mul, eval_mk]
  have e : x * y - (mul h A B).eval u =
      (∑ k ∈ Finset.range 15, (cz2 (lowC A B k) - cz (rnd2 (lowC A B k))) * (mono k u : ℂ) +
        (linP A u * quadP B u + quadP A u * linP B u + quadP A u * quadP B u)) +
      (A.eval u * (y - B.eval u) + (x - A.eval u) * B.eval u + (x - A.eval u) * (y - B.eval u)) := by
    rw [hmul]
    simp only [sub_mul, Finset.sum_sub_distrib]
    linear_combination hAB
  rw [e]
  refine (norm_add_le _ _).trans ?_
  rw [show (mul h A B).ρ = hiB h A B + rerr h + cdivN (sB h A * B.ρ + A.ρ * sB h B + A.ρ * B.ρ) pp from rfl,
    rn_add, rn_add]
  have hA := norm_eval_le hu A
  have hB := norm_eval_le hu B
  have t1 := (norm_add_le _ _).trans (add_le_add (norm_round_le hu (lowC A B)) (norm_hi_le hu A B))
  have t2 : ‖A.eval u * (y - B.eval u) + (x - A.eval u) * B.eval u + (x - A.eval u) * (y - B.eval u)‖ ≤
      rn (cdivN (sB h A * B.ρ + A.ρ * sB h B + A.ρ * B.ρ) pp) := by
    refine (norm_add₃_le).trans ?_
    rw [norm_mul, norm_mul, norm_mul]
    calc ‖A.eval u‖ * ‖y - B.eval u‖ + ‖x - A.eval u‖ * ‖B.eval u‖ + ‖x - A.eval u‖ * ‖y - B.eval u‖
        ≤ rn (sB h A) * rn B.ρ + rn A.ρ * rn (sB h B) + rn A.ρ * rn B.ρ := by
          have e1 := mul_le_mul hA hy (norm_nonneg _) (rn_nonneg _)
          have e2 := mul_le_mul hx hB (norm_nonneg _) (rn_nonneg _)
          have e3 := mul_le_mul hx hy (norm_nonneg _) (rn_nonneg _)
          linarith
      _ = ((sB h A * B.ρ + A.ρ * sB h B + A.ρ * B.ρ : ℕ) : ℝ) / 2 ^ pp / 2 ^ pp := by unfold rn; push_cast; ring
      _ ≤ _ := by unfold rn; exact div_le_div_of_nonneg_right (cdivN_spec _ _) (by positivity)
  linarith

/-! ### Multiplication by `i`, and linear combinations -/

/-- `i · A` (exact). -/
def mulI (A : CT) : CT := mk (fun m => (-(A.cg m).2, (A.cg m).1)) A.ρ

lemma cz_mulI (a : ℤ × ℤ) : cz (-a.2, a.1) = I * cz a := by
  unfold cz; push_cast; ring_nf; rw [Complex.I_sq]; ring

theorem has_mulI {A : CT} {u : Fin 4 → ℝ} {x : ℂ} (hx : A.Has u x) : (mulI A).Has u (I * x) := by
  unfold CT.Has at *
  have : (mulI A).eval u = I * A.eval u := by
    rw [mulI, eval_mk, CT.eval, Finset.mul_sum]
    exact Finset.sum_congr rfl fun m _ => by rw [cz_mulI]; ring
  rw [this, ← mul_sub, norm_mul, Complex.norm_I, one_mul]
  exact hx

/-- The exact coefficient `m` of `Σ_k w_k T_k`, on the grid `2^{-2pp}`. -/
def lowS (l : List ((ℤ × ℤ) × CT)) (m : ℕ) : ℤ × ℤ := l.foldr (fun p acc => zadd (zmul p.1 (p.2.cg m)) acc) (0, 0)

/-- `Σ_k |w_k| ρ_k` on the grid `2^{-2pp}`. -/
def rhoS (l : List ((ℤ × ℤ) × CT)) : ℕ := l.foldr (fun p acc => mb p.1 * p.2.ρ + acc) 0

/-- **A linear combination** `Σ_k w_k T_k` with grid weights, rounded once. -/
def lin (h : List ℕ) (l : List ((ℤ × ℤ) × CT)) : CT := mk (fun m => rnd2 (lowS l m)) (cdivN (rhoS l) pp + rerr h)

/-- The value of the combination. -/
def valS : List ((ℤ × ℤ) × CT) → List ℂ → ℂ
  | p :: l, x :: xs => cz p.1 * x + valS l xs
  | _, _ => 0

/-- Every model encloses its value. -/
def HasAll (u : Fin 4 → ℝ) : List ((ℤ × ℤ) × CT) → List ℂ → Prop
  | p :: l, x :: xs => p.2.Has u x ∧ HasAll u l xs
  | [], [] => True
  | _, _ => False

lemma lin_ideal (u : Fin 4 → ℝ) (l : List ((ℤ × ℤ) × CT)) :
    ∑ m ∈ Finset.range 15, cz2 (lowS l m) * (mono m u : ℂ) = (l.map fun p => cz p.1 * p.2.eval u).sum := by
  induction l with
  | nil => simp [lowS, cz2]
  | cons p l ih =>
    simp only [lowS, List.foldr_cons, List.map_cons, List.sum_cons] at ih ⊢
    simp only [cz2_zadd, add_mul, Finset.sum_add_distrib, ← cz_mul, ih, CT.eval, Finset.mul_sum, mul_assoc]

lemma lin_err {u : Fin 4 → ℝ} : ∀ (l : List ((ℤ × ℤ) × CT)) (xs : List ℂ), HasAll u l xs →
    ‖valS l xs - (l.map fun p => cz p.1 * p.2.eval u).sum‖ ≤ ((rhoS l : ℕ) : ℝ) / 2 ^ pp / 2 ^ pp
  | [], [], _ => by simp [valS, rhoS]
  | p :: l, x :: xs, ⟨hp, hl⟩ => by
    have ih := lin_err l xs hl
    simp only [valS, List.map_cons, List.sum_cons, rhoS, List.foldr_cons] at ih ⊢
    have e : cz p.1 * x + valS l xs - (cz p.1 * p.2.eval u + (l.map fun p => cz p.1 * p.2.eval u).sum) =
        cz p.1 * (x - p.2.eval u) + (valS l xs - (l.map fun p => cz p.1 * p.2.eval u).sum) := by ring
    rw [e]
    refine (norm_add_le _ _).trans ?_
    have h1 : ‖cz p.1 * (x - p.2.eval u)‖ ≤ ((mb p.1 * p.2.ρ : ℕ) : ℝ) / 2 ^ pp / 2 ^ pp := by
      rw [norm_mul]
      calc ‖cz p.1‖ * ‖x - p.2.eval u‖ ≤ rn (mb p.1) * rn p.2.ρ :=
            mul_le_mul (norm_cz_le _) hp (norm_nonneg _) (rn_nonneg _)
        _ = _ := by unfold rn; push_cast; ring
    have e2 : (((mb p.1 * p.2.ρ + l.foldr (fun p acc => mb p.1 * p.2.ρ + acc) 0 : ℕ)) : ℝ) / 2 ^ pp / 2 ^ pp =
        ((mb p.1 * p.2.ρ : ℕ) : ℝ) / 2 ^ pp / 2 ^ pp +
          ((l.foldr (fun p acc => mb p.1 * p.2.ρ + acc) 0 : ℕ) : ℝ) / 2 ^ pp / 2 ^ pp := by push_cast; ring
    rw [e2]
    exact add_le_add h1 ih
  | [], _ :: _, h => absurd h (by simp [HasAll])
  | _ :: _, [], h => absurd h (by simp [HasAll])

theorem has_lin {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {l : List ((ℤ × ℤ) × CT)} {xs : List ℂ}
    (hl : HasAll u l xs) : (lin h l).Has u (valS l xs) := by
  unfold CT.Has
  have hev : (lin h l).eval u = ∑ m ∈ Finset.range 15, cz (rnd2 (lowS l m)) * (mono m u : ℂ) := by
    rw [lin, eval_mk]
  have e : valS l xs - (lin h l).eval u = (valS l xs - (l.map fun p => cz p.1 * p.2.eval u).sum) +
      ∑ m ∈ Finset.range 15, (cz2 (lowS l m) - cz (rnd2 (lowS l m))) * (mono m u : ℂ) := by
    rw [hev, ← lin_ideal u l]
    simp only [sub_mul, Finset.sum_sub_distrib]; ring
  rw [e]
  refine (norm_add_le _ _).trans ?_
  rw [show (lin h l).ρ = cdivN (rhoS l) pp + rerr h from rfl, rn_add]
  refine add_le_add ((lin_err l xs hl).trans ?_) (norm_round_le hu _)
  unfold rn; exact div_le_div_of_nonneg_right (cdivN_spec _ _) (by positivity)

/-! ### Rounding from a finer grid -/

/-- A complex value on the grid `2^{-(pp+k)}`. -/
def czk (k : ℕ) (w : ℤ × ℤ) : ℂ := ((w.1 : ℂ) + (w.2 : ℂ) * I) / 2 ^ (pp + k)

/-- Rounding a `2^{-(pp+k)}` value down to the grid. -/
def rndk (k : ℕ) (w : ℤ × ℤ) : ℤ × ℤ := (fdivZ w.1 k, fdivZ w.2 k)

lemma norm_czk_sub_rndk (k : ℕ) (w : ℤ × ℤ) : ‖czk k w - cz (rndk k w)‖ ≤ rn 2 := by
  have e : czk k w - cz (rndk k w) =
      ((((w.1 : ℝ) / 2 ^ k - (rndk k w).1) / 2 ^ pp : ℝ) : ℂ) +
        ((((w.2 : ℝ) / 2 ^ k - (rndk k w).2) / 2 ^ pp : ℝ) : ℂ) * I := by
    unfold czk cz; push_cast; rw [pow_add]; field_simp; ring
  rw [e]
  refine (norm_re_im_le _ _).trans ?_
  have h1 := fdivZ_spec w.1 k
  have h2 := fdivZ_spec w.2 k
  rw [abs_div, abs_div, abs_of_pos (two_pow_pos pp)]
  unfold rn rndk
  push_cast
  rw [show (2 : ℝ) / 2 ^ pp = 1 / 2 ^ pp + 1 / 2 ^ pp by ring]
  exact add_le_add (div_le_div_of_nonneg_right h1 (two_pow_pos pp).le)
    (div_le_div_of_nonneg_right h2 (two_pow_pos pp).le)

lemma czk_zmul (k : ℕ) (a b : ℤ × ℤ) :
    czk (pp + k) (zmul a b) = cz a * (((b.1 : ℂ) + (b.2 : ℂ) * I) / 2 ^ (pp + k)) := by
  unfold czk cz zmul; push_cast
  rw [show pp + (pp + k) = pp + (pp + k) from rfl, pow_add]
  field_simp
  linear_combination (-(↑a.2 * ↑b.2) : ℂ) * Complex.I_sq

/-- Per-coefficient errors of at most two grid units cost `rerr`. -/
lemma norm_err_le {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (d : ℕ → ℂ) (hd : ∀ m < 15, ‖d m‖ ≤ rn 2) :
    ‖∑ m ∈ Finset.range 15, d m * (mono m u : ℂ)‖ ≤ rn (rerr h) := by
  refine (norm_sum_le _ _).trans ?_
  have : rn (rerr h) = ∑ m ∈ Finset.range 15, rn (termB h 2 m) := by
    unfold rerr rn; rw [list_sum_map_range, Finset.sum_div]
  rw [this]
  refine Finset.sum_le_sum fun m hm => ?_
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
  have h1 := hd m (Finset.mem_range.1 hm)
  have h2 := abs_mono_le hu m
  calc ‖d m‖ * |mono m u| ≤ rn 2 * ((monoW h m : ℝ) / 2 ^ (pp * deg m)) :=
        mul_le_mul h1 h2 (abs_nonneg _) (rn_nonneg _)
    _ = ((2 * monoW h m : ℕ) : ℝ) / 2 ^ (pp * deg m) / 2 ^ pp := by unfold rn; push_cast; ring
    _ ≤ rn (termB h 2 m) := by
        unfold rn termB
        exact div_le_div_of_nonneg_right (cdivN_spec _ _) (by positivity)

/-! ### `e^{i·}` of a real model -/

/-- `⌈q⌉` as a natural number. -/
def ratCeilN (q : ℚ) : ℕ := (⌈q⌉).toNat

lemma le_ratCeilN (q : ℚ) : (q : ℝ) ≤ ratCeilN q := by
  unfold ratCeilN
  have h1 : (q : ℝ) ≤ ((⌈q⌉ : ℤ) : ℝ) := by exact_mod_cast Int.le_ceil q
  have h2 : ((⌈q⌉ : ℤ) : ℝ) ≤ ((⌈q⌉.toNat : ℕ) : ℝ) := by
    have : (⌈q⌉ : ℤ) ≤ (⌈q⌉.toNat : ℤ) := Int.self_le_toNat _
    exact_mod_cast this
  exact h1.trans h2

/-- The constant of a model, as a rational. -/
def ex0 (A : CT) : ℚ := ((A.cg 0).1 : ℚ) / 2 ^ pp

/-- `e^{i c}` on the grid. -/
def expE (A : CT) (nT : ℕ) : ℤ × ℤ := cisRound (ex0 A) nT pp

/-- Its error, on the grid. -/
def expEps (A : CT) (nT : ℕ) : ℕ := ratCeilN ((cisRem (ex0 A) nT + 1 / 2 ^ pp) * 2 ^ pp)

/-- `Σⱼ |gⱼ| hⱼ` for the real parts. -/
def L1r (h : List ℕ) (A : CT) : ℕ := ((List.range 4).map fun j => termB h (mb ((A.cg (j + 1)).1, 0)) (j + 1)).sum

/-- `Σ |H_m| sup|mono_m|` for the real parts. -/
def L2r (h : List ℕ) (A : CT) : ℕ := ((List.range 10).map fun k => termB h (mb ((A.cg (k + 5)).1, 0)) (k + 5)).sum

/-- The coefficients of `e^{ic}(1 + i g·u + uᵀ(iH − ggᵀ/2)u)`, rounded to the grid. -/
def expCoef (A : CT) (nT : ℕ) (k : ℕ) : ℤ × ℤ :=
  if k = 0 then expE A nT
  else if k ≤ 4 then rnd2 (zmul (expE A nT) (0, (A.cg k).1))
  else rndk (pp + (pp + 1)) (zmul (expE A nT)
    (-((A.cg ((qpair k).1 + 1)).1 * (A.cg ((qpair k).2 + 1)).1 * (if (qpair k).1 = (qpair k).2 then 1 else 2)),
      2 * 2 ^ pp * (A.cg k).1))

/-- The `e^{i·}` model. -/
def expI (h : List ℕ) (nT : ℕ) (A : CT) : CT :=
  let L1 := L1r h A
  let L2 := L2r h A
  let ρ := A.ρ
  let ε := expEps A nT
  mk (expCoef A nT) (ρ + cdivN (L1 * (L2 + ρ)) pp + cdivN ((L2 + ρ) ^ 2) (pp + 1) +
    ((L1 + L2 + ρ) ^ 3 + (6 * 2 ^ (2 * pp) - 1)) / (6 * 2 ^ (2 * pp)) +
    cdivN (ε * (2 ^ pp + L1 + L2)) pp + cdivN (ε * L1 ^ 2) (2 * pp + 1) + rerr h)

/-- The side condition of `cisRound`. -/
def expOK (A : CT) (nT : ℕ) : Bool := decide (|ex0 A| / ((nT : ℚ) + 1) ≤ 1 / 2)

lemma cz_real (a : ℤ) : cz (a, 0) = (((a : ℝ) / 2 ^ pp : ℝ) : ℂ) := by unfold cz; push_cast; ring

/-- The real part of a model's polynomial: constant, linear and quadratic parts. -/
lemma eval_re_split (A : CT) (u : Fin 4 → ℝ) :
    (A.eval u).re = (A.cg 0).1 / 2 ^ pp +
      ∑ j ∈ Finset.range 4, ((A.cg (j + 1)).1 : ℝ) / 2 ^ pp * mono (j + 1) u +
      ∑ k ∈ Finset.range 10, ((A.cg (k + 5)).1 : ℝ) / 2 ^ pp * mono (k + 5) u := by
  rw [CT.eval, Complex.re_sum]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add, Complex.re_mul_ofReal, cz_eq,
    Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im, Complex.I_re, Complex.I_im]
  simp [mono]
  ring

lemma abs_lin_le {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (A : CT) :
    |∑ j ∈ Finset.range 4, ((A.cg (j + 1)).1 : ℝ) / 2 ^ pp * mono (j + 1) u| ≤ rn (L1r h A) := by
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  have : rn (L1r h A) = ∑ j ∈ Finset.range 4, rn (termB h (mb ((A.cg (j + 1)).1, 0)) (j + 1)) := by
    unfold L1r rn; rw [list_sum_map_range, Finset.sum_div]
  rw [this]
  refine Finset.sum_le_sum fun j _ => ?_
  have := termB_spec hu ((A.cg (j + 1)).1, 0) (j + 1)
  rwa [cz_real, ← Complex.ofReal_mul, Complex.norm_real, Real.norm_eq_abs] at this

lemma abs_quad_le {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (A : CT) :
    |∑ k ∈ Finset.range 10, ((A.cg (k + 5)).1 : ℝ) / 2 ^ pp * mono (k + 5) u| ≤ rn (L2r h A) := by
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  have : rn (L2r h A) = ∑ k ∈ Finset.range 10, rn (termB h (mb ((A.cg (k + 5)).1, 0)) (k + 5)) := by
    unfold L2r rn; rw [list_sum_map_range, Finset.sum_div]
  rw [this]
  refine Finset.sum_le_sum fun k _ => ?_
  have := termB_spec hu ((A.cg (k + 5)).1, 0) (k + 5)
  rwa [cz_real, ← Complex.ofReal_mul, Complex.norm_real, Real.norm_eq_abs] at this

set_option maxHeartbeats 1000000 in
/-- The exact (unrounded) coefficients sum to `e^{ic}`'s grid value times `1 + ia + iq − a²/2`. -/
lemma exp_poly_eq (A : CT) (nT : ℕ) (u : Fin 4 → ℝ) :
    let E := cz (expE A nT)
    let a := ∑ j ∈ Finset.range 4, ((A.cg (j + 1)).1 : ℝ) / 2 ^ pp * mono (j + 1) u
    let q := ∑ k ∈ Finset.range 10, ((A.cg (k + 5)).1 : ℝ) / 2 ^ pp * mono (k + 5) u
    E * (1 + I * a + I * q - (a : ℂ) ^ 2 / 2) =
      ∑ k ∈ Finset.range 15,
        (if k = 0 then E
         else if k ≤ 4 then czk pp (zmul (expE A nT) (0, (A.cg k).1))
         else czk (pp + (pp + 1)) (zmul (expE A nT)
          (-((A.cg ((qpair k).1 + 1)).1 * (A.cg ((qpair k).2 + 1)).1 * (if (qpair k).1 = (qpair k).2 then 1 else 2)),
            2 * 2 ^ pp * (A.cg k).1))) * (mono k u : ℂ) := by
  intro E a q
  have hz : ∀ b : ℤ × ℤ, czk pp (zmul (expE A nT) b) = E * (((b.1 : ℂ) + (b.2 : ℂ) * I) / 2 ^ (pp + 0)) := by
    intro b; have := czk_zmul 0 (expE A nT) b; simpa using this
  have hz2 := czk_zmul (pp + 1) (expE A nT)
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add, a, q]
  simp only [show (0 : ℕ) = 0 from rfl, if_true, show (1 : ℕ) ≠ 0 by norm_num, show (2 : ℕ) ≠ 0 by norm_num,
    show (3 : ℕ) ≠ 0 by norm_num, show (4 : ℕ) ≠ 0 by norm_num, show (5 : ℕ) ≠ 0 by norm_num,
    show (6 : ℕ) ≠ 0 by norm_num, show (7 : ℕ) ≠ 0 by norm_num, show (8 : ℕ) ≠ 0 by norm_num,
    show (9 : ℕ) ≠ 0 by norm_num, show (10 : ℕ) ≠ 0 by norm_num, show (11 : ℕ) ≠ 0 by norm_num,
    show (12 : ℕ) ≠ 0 by norm_num, show (13 : ℕ) ≠ 0 by norm_num, show (14 : ℕ) ≠ 0 by norm_num, if_false,
    show (1 : ℕ) ≤ 4 by norm_num, show (2 : ℕ) ≤ 4 by norm_num, show (3 : ℕ) ≤ 4 by norm_num,
    show (4 : ℕ) ≤ 4 by norm_num, if_true, show ¬ (5 : ℕ) ≤ 4 by norm_num, show ¬ (6 : ℕ) ≤ 4 by norm_num,
    show ¬ (7 : ℕ) ≤ 4 by norm_num, show ¬ (8 : ℕ) ≤ 4 by norm_num, show ¬ (9 : ℕ) ≤ 4 by norm_num,
    show ¬ (10 : ℕ) ≤ 4 by norm_num, show ¬ (11 : ℕ) ≤ 4 by norm_num, show ¬ (12 : ℕ) ≤ 4 by norm_num,
    show ¬ (13 : ℕ) ≤ 4 by norm_num, show ¬ (14 : ℕ) ≤ 4 by norm_num, hz, hz2, qpair]
  rw [mono_eq 0 (by norm_num), mono_eq 1 (by norm_num), mono_eq 2 (by norm_num), mono_eq 3 (by norm_num),
    mono_eq 4 (by norm_num), mono_eq 5 (by norm_num), mono_eq 6 (by norm_num), mono_eq 7 (by norm_num),
    mono_eq 8 (by norm_num), mono_eq 9 (by norm_num), mono_eq 10 (by norm_num), mono_eq 11 (by norm_num),
    mono_eq 12 (by norm_num), mono_eq 13 (by norm_num), mono_eq 14 (by norm_num)]
  simp only [monoE]
  norm_num
  push_cast
  field_simp
  ring

lemma rn_cdiv_ge {a k : ℕ} {x : ℝ} (hx : x * 2 ^ pp ≤ (a : ℝ) / 2 ^ k) : x ≤ rn (cdivN a k) := by
  unfold rn
  rw [le_div_iff₀ (two_pow_pos pp)]
  exact hx.trans (cdivN_spec a k)

lemma ceilDiv_spec (a D : ℕ) (hD : 0 < D) : a ≤ (a + (D - 1)) / D * D := by
  have h1 := Nat.div_add_mod (a + (D - 1)) D
  have h2 := Nat.mod_lt (a + (D - 1)) hD
  set q := (a + (D - 1)) / D
  set r := (a + (D - 1)) % D
  set t := D * q
  have : q * D = t := by simp only [t]; ring
  rw [this]; omega

/-- **`e^{i·}` of a real model.** -/
theorem has_expI {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {nT : ℕ} {A : CT} (hok : expOK A nT = true)
    {xr : ℝ} (hx : A.Has u (xr : ℂ)) : (expI h nT A).Has u (Complex.exp (xr * I)) := by
  set E := cz (expE A nT)
  set c : ℝ := (A.cg 0).1 / 2 ^ pp
  set a := ∑ j ∈ Finset.range 4, ((A.cg (j + 1)).1 : ℝ) / 2 ^ pp * mono (j + 1) u
  set q := ∑ k ∈ Finset.range 10, ((A.cg (k + 5)).1 : ℝ) / 2 ^ pp * mono (k + 5) u
  set L1 := L1r h A
  set L2 := L2r h A
  set ε := expEps A nT
  have ha : |a| ≤ rn L1 := abs_lin_le hu A
  have hq : |q| ≤ rn L2 := abs_quad_le hu A
  have hre := eval_re_split A u
  -- the remainder of the real part
  set e := xr - (c + a + q)
  have he : |e| ≤ rn A.ρ := by
    have h1 : |xr - (A.eval u).re| ≤ ‖(xr : ℂ) - A.eval u‖ := by
      rw [← Complex.ofReal_re xr, ← Complex.sub_re]; exact Complex.abs_re_le_norm _
    have : xr - (A.eval u).re = e := by rw [hre]
    rw [this] at h1; exact h1.trans hx
  -- the constant: `|e^{ic} − E| ≤ ε`
  have hc : (c : ℝ) = ((ex0 A : ℚ) : ℝ) := by unfold ex0; push_cast; ring
  have hok' : |((ex0 A : ℚ) : ℝ)| / (nT + 1) ≤ 1 / 2 := by
    have := of_decide_eq_true hok
    have h2 : ((|ex0 A| / ((nT : ℚ) + 1) : ℚ) : ℝ) ≤ ((1 / 2 : ℚ) : ℝ) := by exact_mod_cast this
    push_cast at h2; exact h2
  have hE : ‖Complex.exp ((c : ℂ) * I) - E‖ ≤ rn ε := by
    have := cisRound_spec (ex0 A) nT pp hok'
    have e1 : E = (((cisRound (ex0 A) nT pp).1 : ℂ) + ((cisRound (ex0 A) nT pp).2 : ℂ) * I) / 2 ^ pp := rfl
    rw [e1, hc]
    refine this.trans ?_
    have h3 := le_ratCeilN ((cisRem (ex0 A) nT + 1 / 2 ^ pp) * 2 ^ pp)
    unfold rn
    rw [le_div_iff₀ (two_pow_pos pp)]
    push_cast at h3 ⊢
    exact h3
  have hEn : ‖E‖ ≤ 1 + rn ε := by
    have h1 : ‖Complex.exp ((c : ℂ) * I)‖ = 1 := Complex.norm_exp_ofReal_mul_I c
    have := norm_sub_norm_le E (Complex.exp ((c : ℂ) * I))
    rw [norm_sub_rev] at hE; linarith
  -- the Taylor step
  set t := xr - c
  have ht : t = a + (q + e) := by simp only [t, e]; ring
  set P : ℂ := 1 + I * a + I * q - (a : ℂ) ^ 2 / 2
  have hT := NoFourMUBs.SeedAtlas.Method.norm_exp_I_taylor2_le t
  have hb : |q + e| ≤ rn L2 + rn A.ρ := (abs_add_le _ _).trans (add_le_add hq he)
  have htb : |t| ≤ rn L1 + rn L2 + rn A.ρ := by rw [ht]; linarith [abs_add_le a (q + e)]
  have key : Complex.exp (t * I) - P = (Complex.exp (t * I) - 1 - t * I + (t : ℂ) ^ 2 / 2) + I * e -
      ((a : ℂ) * (q + e : ℝ) + ((q + e : ℝ) : ℂ) ^ 2 / 2) := by
    simp only [P, ht]; push_cast; ring
  have hstep : ‖Complex.exp (t * I) - P‖ ≤ (rn L1 + rn L2 + rn A.ρ) ^ 3 / 6 + rn A.ρ +
      (rn L1 * (rn L2 + rn A.ρ) + (rn L2 + rn A.ρ) ^ 2 / 2) := by
    rw [key]
    have n1 := norm_sub_le ((Complex.exp (t * I) - 1 - t * I + (t : ℂ) ^ 2 / 2) + I * e)
      ((a : ℂ) * (q + e : ℝ) + ((q + e : ℝ) : ℂ) ^ 2 / 2)
    have n2 := norm_add_le (Complex.exp (t * I) - 1 - t * I + (t : ℂ) ^ 2 / 2) (I * (e : ℂ))
    have n3 : ‖I * (e : ℂ)‖ ≤ rn A.ρ := by rw [norm_mul, Complex.norm_I, one_mul, Complex.norm_real]; exact he
    have n4 : ‖(a : ℂ) * (q + e : ℝ) + ((q + e : ℝ) : ℂ) ^ 2 / 2‖ ≤
        rn L1 * (rn L2 + rn A.ρ) + (rn L2 + rn A.ρ) ^ 2 / 2 := by
      have : (a : ℂ) * (q + e : ℝ) + ((q + e : ℝ) : ℂ) ^ 2 / 2 = ((a * (q + e) + (q + e) ^ 2 / 2 : ℝ) : ℂ) := by
        push_cast; ring
      rw [this, Complex.norm_real, Real.norm_eq_abs]
      refine (abs_add_le _ _).trans ?_
      rw [abs_mul, abs_div, abs_pow, abs_two]
      have m1 := mul_le_mul ha hb (abs_nonneg _) (rn_nonneg _)
      have m2 := pow_le_pow_left₀ (abs_nonneg (q + e)) hb 2
      linarith
    have n5 : |t| ^ 3 / 6 ≤ (rn L1 + rn L2 + rn A.ρ) ^ 3 / 6 := by
      have := pow_le_pow_left₀ (abs_nonneg t) htb 3
      linarith
    linarith
  -- `‖P‖ ≤ 1 + L1 + L2 + L1²/2`
  have hP : ‖P‖ ≤ 1 + rn L1 + rn L2 + rn L1 ^ 2 / 2 := by
    have n1 : ‖I * (a : ℂ)‖ ≤ rn L1 := by rw [norm_mul, Complex.norm_I, one_mul, Complex.norm_real]; exact ha
    have n2 : ‖I * (q : ℂ)‖ ≤ rn L2 := by rw [norm_mul, Complex.norm_I, one_mul, Complex.norm_real]; exact hq
    have n3 : ‖(a : ℂ) ^ 2 / 2‖ ≤ rn L1 ^ 2 / 2 := by
      rw [norm_div, norm_pow, Complex.norm_real, Complex.norm_two, Real.norm_eq_abs]
      have := pow_le_pow_left₀ (abs_nonneg a) ha 2
      linarith
    have := norm_sub_le (1 + I * (a : ℂ) + I * q) ((a : ℂ) ^ 2 / 2)
    have := norm_add₃_le (a := (1 : ℂ)) (b := I * (a : ℂ)) (c := I * (q : ℂ))
    simp only [norm_one] at *
    linarith
  -- the exact polynomial, and the rounding
  have hpoly := exp_poly_eq A nT u
  have hround : ‖E * P - (expI h nT A).eval u‖ ≤ rn (rerr h) := by
    have hev : (expI h nT A).eval u = ∑ k ∈ Finset.range 15, cz (expCoef A nT k) * (mono k u : ℂ) := by
      rw [expI, eval_mk]
    rw [hev, show E * P = _ from hpoly, ← Finset.sum_sub_distrib]
    simp only [← sub_mul]
    refine norm_err_le hu _ fun k hk => ?_
    by_cases h0 : k = 0
    · subst h0; simp only [expCoef, if_true, sub_self, norm_zero]; exact rn_nonneg _
    · by_cases h4 : k ≤ 4
      · simp only [if_neg h0, if_pos h4, expCoef]; exact norm_czk_sub_rndk pp _
      · simp only [if_neg h0, if_neg h4, expCoef]; exact norm_czk_sub_rndk (pp + (pp + 1)) _
  -- assemble
  unfold CT.Has
  have hexp : Complex.exp (xr * I) = Complex.exp ((c : ℂ) * I) * Complex.exp (t * I) := by
    rw [← Complex.exp_add]; congr 1; simp only [t]; push_cast; ring
  have hsplit : Complex.exp (xr * I) - (expI h nT A).eval u =
      Complex.exp ((c : ℂ) * I) * (Complex.exp (t * I) - P) + (Complex.exp ((c : ℂ) * I) - E) * P +
        (E * P - (expI h nT A).eval u) := by rw [hexp]; ring
  rw [hsplit]
  have m1 : ‖Complex.exp ((c : ℂ) * I) * (Complex.exp (t * I) - P)‖ ≤ (rn L1 + rn L2 + rn A.ρ) ^ 3 / 6 + rn A.ρ +
      (rn L1 * (rn L2 + rn A.ρ) + (rn L2 + rn A.ρ) ^ 2 / 2) := by
    rw [norm_mul, Complex.norm_exp_ofReal_mul_I, one_mul]; exact hstep
  have m2 : ‖(Complex.exp ((c : ℂ) * I) - E) * P‖ ≤ rn ε * (1 + rn L1 + rn L2 + rn L1 ^ 2 / 2) := by
    rw [norm_mul]; exact mul_le_mul hE hP (norm_nonneg _) (rn_nonneg _)
  have tot := (norm_add₃_le).trans (add_le_add (add_le_add m1 m2) hround)
  refine tot.trans ?_
  -- the grid bounds
  show _ ≤ rn (A.ρ + cdivN (L1 * (L2 + A.ρ)) pp + cdivN ((L2 + A.ρ) ^ 2) (pp + 1) +
    ((L1 + L2 + A.ρ) ^ 3 + (6 * 2 ^ (2 * pp) - 1)) / (6 * 2 ^ (2 * pp)) +
    cdivN (ε * (2 ^ pp + L1 + L2)) pp + cdivN (ε * L1 ^ 2) (2 * pp + 1) + rerr h)
  simp only [rn_add]
  have hp : (0 : ℝ) < 2 ^ pp := two_pow_pos pp
  have g1 : rn L1 * (rn L2 + rn A.ρ) ≤ rn (cdivN (L1 * (L2 + A.ρ)) pp) := by
    apply rn_cdiv_ge; apply le_of_eq; unfold rn; push_cast; field_simp
  have g2 : (rn L2 + rn A.ρ) ^ 2 / 2 ≤ rn (cdivN ((L2 + A.ρ) ^ 2) (pp + 1)) := by
    apply rn_cdiv_ge; apply le_of_eq; unfold rn; push_cast; rw [pow_succ]; field_simp; ring
  have g3 : (rn L1 + rn L2 + rn A.ρ) ^ 3 / 6 ≤
      rn (((L1 + L2 + A.ρ) ^ 3 + (6 * 2 ^ (2 * pp) - 1)) / (6 * 2 ^ (2 * pp))) := by
    set D := 6 * 2 ^ (2 * pp)
    have hD : 0 < D := by positivity
    have h1 := ceilDiv_spec ((L1 + L2 + A.ρ) ^ 3) D hD
    have h2 : (((L1 + L2 + A.ρ) ^ 3 : ℕ) : ℝ) ≤ ((((L1 + L2 + A.ρ) ^ 3 + (D - 1)) / D : ℕ) : ℝ) * D := by
      exact_mod_cast h1
    unfold rn
    rw [le_div_iff₀ hp]
    have hD' : (D : ℝ) = 6 * 2 ^ pp * 2 ^ pp := by
      simp only [D]; push_cast; rw [two_mul, pow_add]; ring
    rw [hD'] at h2
    push_cast at h2 ⊢
    have : (((L1 : ℝ) / 2 ^ pp + (L2 : ℝ) / 2 ^ pp + (A.ρ : ℝ) / 2 ^ pp) ^ 3 / 6) * 2 ^ pp =
        ((L1 : ℝ) + L2 + A.ρ) ^ 3 / (6 * 2 ^ pp * 2 ^ pp) := by field_simp
    rw [this, div_le_iff₀ (by positivity)]
    linarith
  have g4 : rn ε * (1 + rn L1 + rn L2) ≤ rn (cdivN (ε * (2 ^ pp + L1 + L2)) pp) := by
    apply rn_cdiv_ge; apply le_of_eq; unfold rn; push_cast; field_simp
  have g5 : rn ε * (rn L1 ^ 2 / 2) ≤ rn (cdivN (ε * L1 ^ 2) (2 * pp + 1)) := by
    apply rn_cdiv_ge; apply le_of_eq; unfold rn; push_cast
    rw [show (2 : ℝ) ^ (2 * pp + 1) = 2 ^ pp * 2 ^ pp * 2 by rw [pow_succ, two_mul, pow_add]]
    field_simp
  nlinarith [rn_nonneg ε, rn_nonneg L1, rn_nonneg L2, rn_nonneg A.ρ]

/-! ### `arg` -/

/-- `e^{−ia}` on the grid, `a` a grid value. -/
def argZ (a : ℤ) (nT : ℕ) : ℤ × ℤ := cisRound (-(a : ℚ) / 2 ^ pp) nT pp

/-- Its error, on the grid. -/
def argEps (a : ℤ) (nT : ℕ) : ℕ := ratCeilN ((cisRem (-(a : ℚ) / 2 ^ pp) nT + 1 / 2 ^ pp) * 2 ^ pp)

/-- `1` on the grid. -/
def oneZ : ℤ × ℤ := (2 ^ pp, 0)

lemma cz_one : cz oneZ = 1 := by rw [cz_eq]; simp [oneZ]

/-- `v = e^{−ia} D − 1`. -/
def argV (h : List ℕ) (nT : ℕ) (a : ℤ) (D : CT) : CT := sub (smul h (argZ a nT) D) (const oneZ)

/-- `⌈x/d⌉` for naturals. -/
def cdivD (x d : ℕ) : ℕ := (x + (d - 1)) / d

lemma le_cdivD (x d : ℕ) (hd : 0 < d) : (x : ℝ) / d ≤ cdivD x d := by
  rw [div_le_iff₀ (by exact_mod_cast hd)]
  have := ceilDiv_spec x d hd
  exact_mod_cast this

/-- The `arg` model: `a + Im(v − v²/2)`, remainder `ρ_v + ρ_{v²}/2 + u_b³/(3(1 − u_b)) + ε/(1 − ε)` and rounding. -/
def argT (h : List ℕ) (nT : ℕ) (a : ℤ) (D : CT) : CT :=
  let v := argV h nT a D
  let v2 := mul h v v
  let ub := bnd h v
  let ez := argEps a nT
  mk (fun k => ((v.cg k).2 - fdivZ (v2.cg k).2 1 + (if k = 0 then a else 0), 0))
    (v.ρ + cdivN v2.ρ 1 + rerr h + cdivD (ub ^ 3) (3 * 2 ^ pp * (2 ^ pp - ub)) +
      cdivD (ez * 2 ^ pp) (2 ^ pp - ez))

lemma argT_rho (h : List ℕ) (nT : ℕ) (a : ℤ) (D : CT) : (argT h nT a D).ρ =
    (argV h nT a D).ρ + cdivN (mul h (argV h nT a D) (argV h nT a D)).ρ 1 + rerr h +
      cdivD (bnd h (argV h nT a D) ^ 3) (3 * 2 ^ pp * (2 ^ pp - bnd h (argV h nT a D))) +
      cdivD (argEps a nT * 2 ^ pp) (2 ^ pp - argEps a nT) := rfl

/-- The side conditions: `|v| < 1/2`, `ε < 1/2`, and `cisRound`'s range. -/
def argOK (h : List ℕ) (nT : ℕ) (a : ℤ) (D : CT) : Bool :=
  decide (2 * bnd h (argV h nT a D) < 2 ^ pp) && decide (2 * argEps a nT < 2 ^ pp) &&
    decide (|(-(a : ℚ) / 2 ^ pp)| / ((nT : ℚ) + 1) ≤ 1 / 2)

/-- `|Im log(1 + η)| ≤ ‖η‖/(1 − ‖η‖)` and `1 + η = ‖1 + η‖ e^{i Im log(1 + η)}`. -/
lemma log_one_add_bound {η : ℂ} (hη : ‖η‖ < 1) :
    |(Complex.log (1 + η)).im| ≤ ‖η‖ / (1 - ‖η‖) ∧
      1 + η = (‖1 + η‖ : ℂ) * Complex.exp (((Complex.log (1 + η)).im : ℝ) * I) := by
  have h := Complex.norm_log_sub_logTaylor_le 0 hη
  have hT : Complex.logTaylor (0 + 1) η = 0 := by simp [Complex.logTaylor]
  rw [hT, sub_zero] at h
  refine ⟨(Complex.abs_im_le_norm _).trans (h.trans (le_of_eq ?_)), ?_⟩
  · simp; ring
  · rw [Complex.log_im]; exact (Complex.norm_mul_exp_arg_mul_I (1 + η)).symm

/-- **The `arg` step.** -/
theorem has_argT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {nT : ℕ} {a : ℤ} {D : CT}
    (hok : argOK h nT a D = true) {d : ℂ} (hd : D.Has u d) :
    ∃ Φ : ℝ, d = (‖d‖ : ℂ) * Complex.exp (Φ * I) ∧ (argT h nT a D).Has u (Φ : ℂ) := by
  simp only [argOK, Bool.and_eq_true, decide_eq_true_eq] at hok
  obtain ⟨⟨hub, hez⟩, hrange⟩ := hok
  set v := argV h nT a D
  set v2 := mul h v v
  set ub := bnd h v
  set ez := argEps a nT
  set ζ := cz (argZ a nT)
  set a' : ℝ := (a : ℝ) / 2 ^ pp
  have hp : (0 : ℝ) < 2 ^ pp := two_pow_pos pp
  -- `‖e^{−ia'} − ζ‖ ≤ ε`
  have hζ : ‖Complex.exp ((-a' : ℝ) * I) - ζ‖ ≤ rn ez := by
    have hr : |((-(a : ℚ) / 2 ^ pp : ℚ) : ℝ)| / (nT + 1) ≤ 1 / 2 := by
      have h2 : ((|(-(a : ℚ) / 2 ^ pp)| / ((nT : ℚ) + 1) : ℚ) : ℝ) ≤ ((1 / 2 : ℚ) : ℝ) := by exact_mod_cast hrange
      push_cast at h2 ⊢; exact h2
    have := cisRound_spec (-(a : ℚ) / 2 ^ pp) nT pp hr
    have e1 : (((-(a : ℚ) / 2 ^ pp : ℚ) : ℝ) : ℂ) = ((-a' : ℝ) : ℂ) := by simp only [a']; push_cast; ring
    rw [e1] at this
    refine this.trans ?_
    have h3 := le_ratCeilN ((cisRem (-(a : ℚ) / 2 ^ pp) nT + 1 / 2 ^ pp) * 2 ^ pp)
    unfold rn; rw [le_div_iff₀ hp]; push_cast at h3 ⊢; exact h3
  have hez' : rn ez < 1 / 2 := by
    unfold rn; rw [div_lt_iff₀ hp]
    have : ((2 * ez : ℕ) : ℝ) < ((2 ^ pp : ℕ) : ℝ) := by exact_mod_cast hez
    push_cast at this; linarith
  -- `w = ζ d − 1`
  set w := ζ * d - 1
  have hw : v.Has u w := by
    have := has_sub (has_smul hu (argZ a nT) hd) (has_const oneZ u)
    rwa [cz_one] at this
  have hwn : ‖w‖ ≤ rn ub := norm_le_bnd hu hw
  have hub' : rn ub < 1 / 2 := by
    unfold rn; rw [div_lt_iff₀ hp]
    have : ((2 * ub : ℕ) : ℝ) < ((2 ^ pp : ℕ) : ℝ) := by exact_mod_cast hub
    push_cast at this; linarith
  have hw1 : ‖w‖ < 1 := by linarith
  -- `η = ζ e^{ia'} − 1`
  set η := ζ * Complex.exp (a' * I) - 1
  have hη : ‖η‖ ≤ rn ez := by
    have e : η = -((Complex.exp ((-a' : ℝ) * I) - ζ) * Complex.exp (a' * I)) := by
      simp only [η, sub_mul]
      rw [← Complex.exp_add, show ((-a' : ℝ) : ℂ) * I + a' * I = 0 by push_cast; ring, Complex.exp_zero]
      ring
    rw [e, norm_neg, norm_mul, Complex.norm_exp_ofReal_mul_I, mul_one]; exact hζ
  have hη1 : ‖η‖ < 1 := by linarith
  obtain ⟨hβ, h1η⟩ := log_one_add_bound hη1
  set β := (Complex.log (1 + η)).im
  obtain ⟨R, hR, h1w⟩ := NoFourMUBs.SeedAtlas.Method.exists_arg_one_add hw1
  set ψ := (w - w ^ 2 / 2).im + R
  -- the phase
  have hζ0 : ζ = Complex.exp ((-a' : ℝ) * I) * (1 + η) := by
    have h1 : 1 + η = ζ * Complex.exp (a' * I) := by simp only [η]; ring
    rw [h1, mul_left_comm, ← Complex.exp_add,
      show ((-a' : ℝ) : ℂ) * I + a' * I = 0 by push_cast; ring, Complex.exp_zero, mul_one]
  have hne : ‖1 + η‖ ≠ 0 := by
    have : (1 : ℝ) - ‖η‖ ≤ ‖1 + η‖ := by
      have := norm_sub_norm_le (1 : ℂ) (-η); simp at this; linarith
    linarith
  have hζne : ζ ≠ 0 := by
    rw [hζ0]; refine mul_ne_zero (Complex.exp_ne_zero _) ?_
    intro h0; rw [h0, norm_zero] at hne; exact hne rfl
  have hd' : d = ζ⁻¹ * (1 + w) := by simp only [w]; field_simp; ring
  refine ⟨a' - β + ψ, ?_, ?_⟩
  · have hdform : d = ((‖1 + w‖ / ‖1 + η‖ : ℝ) : ℂ) * Complex.exp (((a' - β + ψ : ℝ) : ℂ) * I) := by
      rw [hd']
      conv_lhs => rw [hζ0, h1η, h1w]
      have ee : Complex.exp (((a' - β + ψ : ℝ) : ℂ) * I) =
          (Complex.exp (((-a' : ℝ) : ℂ) * I))⁻¹ * (Complex.exp ((β : ℂ) * I))⁻¹ * Complex.exp ((ψ : ℂ) * I) := by
        rw [← Complex.exp_neg, ← Complex.exp_neg, ← Complex.exp_add, ← Complex.exp_add]; congr 1; push_cast; ring
      rw [ee]
      have hn0 : ((‖1 + η‖ : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hne
      have he1 := Complex.exp_ne_zero (((-a' : ℝ) : ℂ) * I)
      have he2 := Complex.exp_ne_zero ((β : ℂ) * I)
      push_cast
      field_simp
    have hnd : ‖d‖ = ‖1 + w‖ / ‖1 + η‖ := by
      rw [hdform, norm_mul, Complex.norm_exp_ofReal_mul_I, mul_one, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (by positivity)]
    rw [hnd]; exact hdform
  · -- the enclosure
    have hv2 : v2.Has u (w * w) := has_mul hu hw hw
    set ideal : ℕ → ℝ := fun k => ((v.cg k).2 : ℝ) / 2 ^ pp - ((v2.cg k).2 : ℝ) / 2 / 2 ^ pp +
      (if k = 0 then a' else 0)
    have hA : ∑ k ∈ Finset.range 15, (ideal k : ℂ) * (mono k u : ℂ) =
        ((a' + (v.eval u).im - (v2.eval u).im / 2 : ℝ) : ℂ) := by
      have e1 : (v.eval u).im = ∑ k ∈ Finset.range 15, ((v.cg k).2 : ℝ) / 2 ^ pp * mono k u := by
        rw [CT.eval, Complex.im_sum]
        refine Finset.sum_congr rfl fun k _ => ?_
        rw [Complex.im_mul_ofReal, cz_eq]
        simp only [Complex.add_im, Complex.ofReal_im, Complex.mul_im, Complex.ofReal_re, Complex.I_re, Complex.I_im]
        ring
      have e2 : (v2.eval u).im = ∑ k ∈ Finset.range 15, ((v2.cg k).2 : ℝ) / 2 ^ pp * mono k u := by
        rw [CT.eval, Complex.im_sum]
        refine Finset.sum_congr rfl fun k _ => ?_
        rw [Complex.im_mul_ofReal, cz_eq]
        simp only [Complex.add_im, Complex.ofReal_im, Complex.mul_im, Complex.ofReal_re, Complex.I_re, Complex.I_im]
        ring
      rw [e1, e2]
      simp only [ideal, Finset.sum_range_succ, Finset.sum_range_zero, zero_add]
      simp [mono]
      push_cast; ring
    have hB : ∀ k < 15, ‖((ideal k : ℝ) : ℂ) - cz ((v.cg k).2 - fdivZ (v2.cg k).2 1 + (if k = 0 then a else 0), 0)‖ ≤
        rn 2 := by
      intro k _
      rw [cz_real, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
      have hf := fdivZ_spec (v2.cg k).2 1
      have e : ideal k - (((v.cg k).2 - fdivZ (v2.cg k).2 1 + (if k = 0 then a else 0) : ℤ) : ℝ) / 2 ^ pp =
          -((((v2.cg k).2 : ℝ) / 2 ^ 1 - fdivZ (v2.cg k).2 1) / 2 ^ pp) := by
        simp only [ideal, a']; split_ifs <;> push_cast <;> ring
      rw [e, abs_neg, abs_div, abs_of_pos hp]
      unfold rn
      exact div_le_div_of_nonneg_right (hf.trans (by norm_num)) hp.le
    have hround : ‖((a' + (v.eval u).im - (v2.eval u).im / 2 : ℝ) : ℂ) - (argT h nT a D).eval u‖ ≤
        rn (rerr h) := by
      rw [← hA, show (argT h nT a D).eval u = ∑ k ∈ Finset.range 15,
          cz ((v.cg k).2 - fdivZ (v2.cg k).2 1 + (if k = 0 then a else 0), 0) * (mono k u : ℂ) by
        rw [argT, eval_mk], ← Finset.sum_sub_distrib]
      simp only [← sub_mul]
      exact norm_err_le hu _ hB
    -- the analytic part
    have hphi : (a' - β + ψ) - (a' + (v.eval u).im - (v2.eval u).im / 2) =
        -β + (w - v.eval u).im - (w * w - v2.eval u).im / 2 + R := by
      simp only [ψ, Complex.sub_im, Complex.div_ofNat_im, pow_two]; ring
    have b1 : |(w - v.eval u).im| ≤ rn v.ρ := (Complex.abs_im_le_norm _).trans hw
    have b2 : |(w * w - v2.eval u).im| ≤ rn v2.ρ := (Complex.abs_im_le_norm _).trans hv2
    have hη2 : ‖η‖ / (1 - ‖η‖) ≤ rn ez / (1 - rn ez) := by
      exact div_le_div₀ (rn_nonneg _) hη (by linarith) (by linarith)
    have hR2 : ‖w‖ ^ 3 / (3 * (1 - ‖w‖)) ≤ rn ub ^ 3 / (3 * (1 - rn ub)) := by
      exact div_le_div₀ (pow_nonneg (rn_nonneg _) 3) (pow_le_pow_left₀ (norm_nonneg _) hwn 3) (by linarith)
        (by linarith)
    -- grid bounds
    have hub0 : ub < 2 ^ pp := by omega
    have hez0 : ez < 2 ^ pp := by omega
    have gtail : rn ub ^ 3 / (3 * (1 - rn ub)) ≤ rn (cdivD (ub ^ 3) (3 * 2 ^ pp * (2 ^ pp - ub))) := by
      have hd : 0 < 3 * 2 ^ pp * (2 ^ pp - ub) :=
        Nat.mul_pos (Nat.mul_pos (by norm_num) (pow_pos (by norm_num) _)) (Nat.sub_pos_of_lt hub0)
      have := le_cdivD (ub ^ 3) _ hd
      unfold rn
      rw [le_div_iff₀ hp]
      refine le_trans (le_of_eq ?_) this
      have hsub : (((2 ^ pp - ub : ℕ)) : ℝ) = 2 ^ pp - ub := by
        rw [Nat.cast_sub hub0.le]; push_cast; ring
      push_cast [hsub]
      have : (2 : ℝ) ^ pp - ub ≠ 0 := by
        have : (ub : ℝ) < 2 ^ pp := by exact_mod_cast hub0
        linarith
      field_simp
    have gbeta : rn ez / (1 - rn ez) ≤ rn (cdivD (ez * 2 ^ pp) (2 ^ pp - ez)) := by
      have hd : 0 < 2 ^ pp - ez := Nat.sub_pos_of_lt hez0
      have := le_cdivD (ez * 2 ^ pp) _ hd
      unfold rn
      rw [le_div_iff₀ hp]
      refine le_trans (le_of_eq ?_) this
      have hsub : (((2 ^ pp - ez : ℕ)) : ℝ) = 2 ^ pp - ez := by
        rw [Nat.cast_sub hez0.le]; push_cast; ring
      push_cast [hsub]
      have : (2 : ℝ) ^ pp - ez ≠ 0 := by
        have : (ez : ℝ) < 2 ^ pp := by exact_mod_cast hez0
        linarith
      field_simp
    have ghalf : rn v2.ρ / 2 ≤ rn (cdivN v2.ρ 1) := by
      apply rn_cdiv_ge; apply le_of_eq; unfold rn; field_simp
    -- assemble
    unfold CT.Has
    have hsplit : ((a' - β + ψ : ℝ) : ℂ) - (argT h nT a D).eval u =
        ((((a' - β + ψ) - (a' + (v.eval u).im - (v2.eval u).im / 2)) : ℝ) : ℂ) +
          (((a' + (v.eval u).im - (v2.eval u).im / 2 : ℝ) : ℂ) - (argT h nT a D).eval u) := by push_cast; ring
    rw [hsplit]
    refine (norm_add_le _ _).trans ?_
    rw [Complex.norm_real, Real.norm_eq_abs, hphi]
    rw [argT_rho]
    simp only [rn_add]
    have hab : |-β + (w - v.eval u).im - (w * w - v2.eval u).im / 2 + R| ≤
        |β| + |(w - v.eval u).im| + |(w * w - v2.eval u).im| / 2 + |R| := by
      have := abs_add_le (-β + (w - v.eval u).im - (w * w - v2.eval u).im / 2) R
      have := abs_sub (-β + (w - v.eval u).im) ((w * w - v2.eval u).im / 2)
      have := abs_add_le (-β) (w - v.eval u).im
      rw [abs_neg] at this
      rw [abs_div, abs_two] at *
      linarith
    linarith

end NoFourMUBs.KernelAtlas.Seed
