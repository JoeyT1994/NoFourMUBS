import KernelAtlas.Seed.Cover
import NoFourMUBs.SeedAtlas.Method.Box

/-!
# The T0 transfer of a seed ball box (FORMAT §4; `KERNEL_SEED.md` §6)

Seed ball `j` (source), seed ball `l` (target, `o_l = o_j`), winding `N ∈ ℤ⁴`, a dyadic box `b` of `j`
(`w ∈ rn r_j · [lo, hi]`, `Bx.Mem`).  The claim (`SeedTargetHolds .t0`): for every `w` of the box there is `w'` with
`‖w'‖ < r_l` and `θ_l(w') = θ_j(w) + 2πN`.  Take `w' = M_l⁻¹(θ₀_j + M_j w + 2πN − θ₀_l)`; with the adjugate
`adj` of the integer matrix `2^pp M_l` (`InvD`, `invOK`), `M_l⁻¹ = 2^pp adj / det` and

  `w'_i = (c_i + Σ_a K_ia w_a + 2π 2^pp z_i) / det`,  `c = adj (θ₀_j − θ₀_l)`, `K = adj M_j`, `z = adj N`

(grid integers, `t0c`, `t0K`, `t0z`).  Write `π = (p₀ + t)/q`, `p₀ = 314159265358979323846`, `q = 10²⁰`, `t ∈ [0, 1]`
(`Real.pi_gt_d20`, `Real.pi_lt_d20`).  At the vertex `u_a = (L_a + 2 s_a) / 2^m` of the box,
`w'_i = (Y_i + t Z_i) / X`, `X = det 2^pp 2^m q`, with the integers

  `Y_i = 2^pp 2^m q c_i + r_j q Σ_a K_ia (L_a + 2 s_a) + 2 p₀ 2^{2pp} 2^m z_i`  (`t0Y`),  `Z_i = 2 · 2^{2pp} 2^m z_i`.

With `B = r_l |det| 2^m q` (so `r_l = B / |X|`) and `ζ = Σ|Z_i| ≥ ‖Z‖`, the box test (`t0Box`) is `ζ ≤ B` and, at the
16 vertices, `Σ_i Y_i² < (B − ζ)²` (natural numbers).  Then on the box `‖w'(·, π₀)‖ < (B − ζ)/|X|` (convexity:
`Method.le_of_vertices`) and `‖w'(·, π) − w'(·, π₀)‖ ≤ ζ/|X|`, so `‖w'‖ < r_l` (`quad_box_lt`).
The vertices are summed incrementally (`Z4.addIf`), so a box costs about 120 integer additions and 16 squared norms.
-/

open Matrix Hadamard6 NoFourMUBs.StageC NoFourMUBs.SeedAtlas

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### `π` between rationals -/

def piQ : ℤ := 10 ^ 20
def piN0 : ℤ := 314159265358979323846

lemma pi_bounds : (piN0 : ℝ) / piQ < Real.pi ∧ Real.pi < ((piN0 : ℝ) + 1) / piQ := by
  have h1 := Real.pi_gt_d20
  have h2 := Real.pi_lt_d20
  unfold piN0 piQ
  constructor <;> norm_num at h1 h2 ⊢ <;> linarith

/-! ### The check -/

/-- `c_i = Σ_k adj_ik (θ₀_j − θ₀_l)_k`. -/
def t0c (Bj Bl : BallD) (I : InvD) (i : ℕ) : ℤ := (l4 fun k => gi I.adj (4 * i + k) * (gi Bj.th0 k - gi Bl.th0 k)).sum

/-- `K_ia = Σ_k adj_ik (M_j)_ka`. -/
def t0K (Bj : BallD) (I : InvD) (i a : ℕ) : ℤ := (l4 fun k => gi I.adj (4 * i + k) * gi Bj.Mth (4 * k + a)).sum

/-- `z_i = Σ_k adj_ik N_k`. -/
def t0z (I : InvD) (N : List ℤ) (i : ℕ) : ℤ := (l4 fun k => gi I.adj (4 * i + k) * gi N k).sum

/-- Four Booleans as a function of `ℕ`. -/
def sel4 (s0 s1 s2 s3 : Bool) : ℕ → Bool
  | 0 => s0
  | 1 => s1
  | 2 => s2
  | _ => s3

/-- `Y_i` at the vertex `L + 2s` of `b`, for `π ≈ p₀ / q` (the specification of `t0Box`). -/
def t0Y (Dj Dl : SeedD) (I : InvD) (N : List ℤ) (b : Bx) (s : ℕ → Bool) (i : ℕ) : ℤ :=
  2 ^ pp * 2 ^ b.m * piQ * t0c Dj.B Dl.B I i +
    (Dj.r : ℤ) * piQ * (l4 fun a => t0K Dj.B I i a * (b.L a + if s a then 2 else 0)).sum +
    2 * piN0 * 2 ^ (2 * pp) * 2 ^ b.m * t0z I N i

/-- Both values of a Boolean. -/
def allB (f : Bool → Bool) : Bool := f false && f true

lemma allB_spec {f : Bool → Bool} (h : allB f = true) (x : Bool) : f x = true := by
  simp only [allB, Bool.and_eq_true] at h
  cases x
  exacts [h.1, h.2]

/-- An integer 4-vector. -/
structure Z4 where
  x0 : ℤ
  x1 : ℤ
  x2 : ℤ
  x3 : ℤ

def Z4.get (v : Z4) : ℕ → ℤ
  | 0 => v.x0
  | 1 => v.x1
  | 2 => v.x2
  | _ => v.x3

def Z4.ofFn (f : ℕ → ℤ) : Z4 := ⟨f 0, f 1, f 2, f 3⟩
def Z4.add (v w : Z4) : Z4 := ⟨v.x0 + w.x0, v.x1 + w.x1, v.x2 + w.x2, v.x3 + w.x3⟩
def Z4.addIf (s : Bool) (v w : Z4) : Z4 := if s then v.add w else v
/-- `Σ v_i²` and `Σ |v_i|` as natural numbers. -/
def Z4.nsqN (v : Z4) : ℕ :=
  v.x0.natAbs * v.x0.natAbs + v.x1.natAbs * v.x1.natAbs + v.x2.natAbs * v.x2.natAbs + v.x3.natAbs * v.x3.natAbs
def Z4.l1N (v : Z4) : ℕ := v.x0.natAbs + v.x1.natAbs + v.x2.natAbs + v.x3.natAbs

/-- `Y` at the vertex `s = 0`: `2^pp 2^m q c_i + r_j q Σ_a K_ia L_a + 2 p₀ 2^{2pp} 2^m z_i` (per box). -/
def t0A (Dj Dl : SeedD) (I : InvD) (N : List ℤ) (b : Bx) : Z4 :=
  Z4.ofFn fun i => 2 ^ pp * 2 ^ b.m * piQ * t0c Dj.B Dl.B I i +
    (Dj.r : ℤ) * piQ * (l4 fun a => t0K Dj.B I i a * b.L a).sum + 2 * piN0 * 2 ^ (2 * pp) * 2 ^ b.m * t0z I N i

/-- The step `s_a = 1`: `2 r_j q K_ia` (per group). -/
def t0D (Dj : SeedD) (I : InvD) (a : ℕ) : Z4 := Z4.ofFn fun i => 2 * (Dj.r : ℤ) * piQ * t0K Dj.B I i a

/-- The `π` direction `Z_i = 2 · 2^{2pp} 2^m z_i` (per group and level). -/
def t0Zd (I : InvD) (N : List ℤ) (m : ℕ) : Z4 := Z4.ofFn fun i => 2 * 2 ^ (2 * pp) * 2 ^ m * t0z I N i

/-- `B = r_l |det| 2^m q`. -/
def t0B (Dl : SeedD) (I : InvD) (m : ℕ) : ℕ := Dl.r * I.det.natAbs * 2 ^ m * 10 ^ 20

/-- **The 16 vertex tests of a box**: `ζ ≤ B` and `Σ_i Y_i² < (B − ζ)²`, the vertices summed incrementally (the
partial sums are closed terms, shared by the kernel). -/
def t0Box (Dj Dl : SeedD) (I : InvD) (N : List ℤ) (b : Bx) : Bool :=
  let ζ := (t0Zd I N b.m).l1N
  let B := t0B Dl I b.m
  let A := t0A Dj Dl I N b
  Nat.ble ζ B &&
  allB fun s0 => let v1 := Z4.addIf s0 A (t0D Dj I 0)
  allB fun s1 => let v2 := Z4.addIf s1 v1 (t0D Dj I 1)
  allB fun s2 => let v3 := Z4.addIf s2 v2 (t0D Dj I 2)
  allB fun s3 => let v4 := Z4.addIf s3 v3 (t0D Dj I 3)
  Nat.blt v4.nsqN ((B - ζ) * (B - ζ))

/-- **The T0 check of one box**: equal orientations and the vertex tests (`invOK Dl.B I` is checked once per
target ball). -/
def t0OK (Dj Dl : SeedD) (I : InvD) (N : List ℤ) (b : Bx) : Bool := decide (Dl.B.o = Dj.B.o) && t0Box Dj Dl I N b

/-! ### Reading the check -/

lemma Z4.get_addIf (s : Bool) (v w : Z4) (i : ℕ) : (Z4.addIf s v w).get i = v.get i + if s then w.get i else 0 := by
  cases s <;> rcases i with _ | _ | _ | _ <;> simp [Z4.addIf, Z4.add, Z4.get]

lemma Z4.get_ofFn (f : ℕ → ℤ) {i : ℕ} (hi : i < 4) : (Z4.ofFn f).get i = f i := by
  interval_cases i <;> rfl

lemma Z4.nsqN_eq (v : Z4) : (v.nsqN : ℤ) = v.get 0 ^ 2 + v.get 1 ^ 2 + v.get 2 ^ 2 + v.get 3 ^ 2 := by
  simp only [Z4.nsqN, Z4.get, Nat.cast_add, Nat.cast_mul, Int.natCast_natAbs, abs_mul_abs_self]
  ring

lemma Z4.l1N_eq (v : Z4) : (v.l1N : ℤ) = |v.get 0| + |v.get 1| + |v.get 2| + |v.get 3| := by
  simp only [Z4.l1N, Z4.get]; push_cast; ring

/-- The incremental vertex is `Y` (`t0Y`). -/
lemma t0_vertex_eq (Dj Dl : SeedD) (I : InvD) (N : List ℤ) (b : Bx) (s0 s1 s2 s3 : Bool) {i : ℕ} (hi : i < 4) :
    (Z4.addIf s3 (Z4.addIf s2 (Z4.addIf s1 (Z4.addIf s0 (t0A Dj Dl I N b) (t0D Dj I 0)) (t0D Dj I 1))
      (t0D Dj I 2)) (t0D Dj I 3)).get i = t0Y Dj Dl I N b (sel4 s0 s1 s2 s3) i := by
  simp only [Z4.get_addIf, t0A, t0D, Z4.get_ofFn _ hi, t0Y, sum_l4Z, sel4]
  cases s0 <;> cases s1 <;> cases s2 <;> cases s3 <;> simp <;> ring

/-- The facts of `t0Box`. -/
lemma t0Box_facts {Dj Dl : SeedD} {I : InvD} {N : List ℤ} {b : Bx} (h : t0Box Dj Dl I N b = true) :
    (t0Zd I N b.m).l1N ≤ t0B Dl I b.m ∧ ∀ s0 s1 s2 s3 : Bool,
      (l4 fun i => t0Y Dj Dl I N b (sel4 s0 s1 s2 s3) i ^ 2).sum <
        (((t0B Dl I b.m - (t0Zd I N b.m).l1N : ℕ) : ℤ)) ^ 2 := by
  dsimp only [t0Box] at h
  rw [Bool.and_eq_true] at h
  refine ⟨Nat.le_of_ble_eq_true h.1, fun s0 s1 s2 s3 => ?_⟩
  have hk := Nat.blt_eq ▸ (allB_spec (allB_spec (allB_spec (allB_spec h.2 s0) s1) s2) s3)
  have hk' : ((Z4.addIf s3 (Z4.addIf s2 (Z4.addIf s1 (Z4.addIf s0 (t0A Dj Dl I N b) (t0D Dj I 0)) (t0D Dj I 1))
      (t0D Dj I 2)) (t0D Dj I 3)).nsqN : ℤ) < (((t0B Dl I b.m - (t0Zd I N b.m).l1N : ℕ) : ℤ)) ^ 2 := by
    rw [sq]; exact_mod_cast hk
  rw [Z4.nsqN_eq, t0_vertex_eq _ _ _ _ _ _ _ _ _ (by norm_num : (0 : ℕ) < 4),
    t0_vertex_eq _ _ _ _ _ _ _ _ _ (by norm_num : (1 : ℕ) < 4), t0_vertex_eq _ _ _ _ _ _ _ _ _ (by norm_num : (2 : ℕ) < 4),
    t0_vertex_eq _ _ _ _ _ _ _ _ _ (by norm_num : (3 : ℕ) < 4)] at hk'
  simpa only [l4, List.sum_cons, List.sum_nil, add_zero, add_assoc] using
    (by simpa only [add_assoc] using hk' :
      t0Y Dj Dl I N b (sel4 s0 s1 s2 s3) 0 ^ 2 + (t0Y Dj Dl I N b (sel4 s0 s1 s2 s3) 1 ^ 2 +
        (t0Y Dj Dl I N b (sel4 s0 s1 s2 s3) 2 ^ 2 + t0Y Dj Dl I N b (sel4 s0 s1 s2 s3) 3 ^ 2)) < _)

/-! ### Convexity -/

/-- The sum of squares of an affine map is convex. -/
lemma convexOn_sumsq_affine {E : Type*} [AddCommGroup E] [Module ℝ E] (F : E → Fin 4 → ℝ)
    (hF : ∀ x y : E, ∀ s t : ℝ, s + t = 1 → F (s • x + t • y) = s • F x + t • F y) :
    ConvexOn ℝ Set.univ (fun x => ∑ i, F x i ^ 2) := by
  refine ⟨convex_univ, fun x _ y _ s t hs ht hst => ?_⟩
  simp only [smul_eq_mul]
  rw [hF x y s t hst]
  simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, Finset.mul_sum, ← Finset.sum_add_distrib]
  refine Finset.sum_le_sum fun i _ => ?_
  have ht' : t = 1 - s := by linarith
  subst ht'
  nlinarith [mul_nonneg (mul_nonneg hs ht) (sq_nonneg (F x i - F y i))]

/-- **Vertex bound for a convex quadratic**: `Σᵢ (cᵢ + Σₐ Kᵢₐ uₐ)² < B` on the box `lo ≤ u ≤ hi` if it holds at the
16 vertices. -/
theorem quad_box_lt0 {c lo hi : Fin 4 → ℝ} {K : Fin 4 → Fin 4 → ℝ} {B : ℝ}
    (hv : ∀ s : Fin 4 → Bool, ∑ i, (c i + ∑ a, K i a * (if s a then hi a else lo a)) ^ 2 < B)
    {u : Fin 4 → ℝ} (hu : ∀ a, lo a ≤ u a ∧ u a ≤ hi a) :
    ∑ i, (c i + ∑ a, K i a * u a) ^ 2 < B := by
  set mid : Fin 4 → ℝ := fun a => (lo a + hi a) / 2
  set h : Fin 4 → ℝ := fun a => (hi a - lo a) / 2
  set F : (Fin 4 → ℝ) → Fin 4 → ℝ := fun δ i => c i + ∑ a, K i a * (mid a + δ a)
  have hF : ∀ x y : Fin 4 → ℝ, ∀ s t : ℝ, s + t = 1 → F (s • x + t • y) = s • F x + t • F y := by
    intro x y s t hst
    funext i
    simp only [F, Pi.add_apply, Pi.smul_apply, smul_eq_mul, Fin.sum_univ_four]
    linear_combination (-(c i + K i 0 * mid 0 + K i 1 * mid 1 + K i 2 * mid 2 + K i 3 * mid 3)) * hst
  have hconv := convexOn_sumsq_affine F hF
  obtain ⟨s₀, -, hs₀⟩ := Finset.exists_max_image Finset.univ
    (fun s => ∑ i, F (Method.vertex h s) i ^ 2) Finset.univ_nonempty
  have hvert : ∀ s a, mid a + Method.vertex h s a = if s a then hi a else lo a := by
    intro s a
    simp only [Method.vertex, mid, h]
    split_ifs <;> ring
  have hFv : ∀ s, ∑ i, F (Method.vertex h s) i ^ 2 < B := by
    intro s
    simp only [F, hvert]
    exact hv s
  have hin : Method.InBox h (u - mid) := by
    intro a
    obtain ⟨h1, h2⟩ := hu a
    simp only [Pi.sub_apply, mid, h]
    rw [abs_le]; constructor <;> linarith
  have := Method.le_of_vertices hconv (fun s => hs₀ s (Finset.mem_univ s)) hin
  have e : ∑ i, F (u - mid) i ^ 2 = ∑ i, (c i + ∑ a, K i a * u a) ^ 2 := by
    simp only [F, Pi.sub_apply, add_sub_cancel]
  rw [← e]
  exact this.trans_lt (hFv s₀)

/-- **The T0 bound**: vertices at `p₀` below `(R − ε)²` and `|p − p₀| ‖z‖ ≤ ε ≤ R` give
`Σᵢ (cᵢ + Σₐ Kᵢₐ uₐ + p zᵢ)² < R²` on the box. -/
theorem quad_box_lt {c z lo hi : Fin 4 → ℝ} {K : Fin 4 → Fin 4 → ℝ} {p₀ p R ε : ℝ}
    (hv : ∀ s : Fin 4 → Bool, ∑ i, (c i + ∑ a, K i a * (if s a then hi a else lo a) + p₀ * z i) ^ 2 < (R - ε) ^ 2)
    (hRε : ε ≤ R) (hε0 : 0 ≤ ε) (hz : (p - p₀) ^ 2 * ∑ i, z i ^ 2 ≤ ε ^ 2)
    {u : Fin 4 → ℝ} (hu : ∀ a, lo a ≤ u a ∧ u a ≤ hi a) :
    ∑ i, (c i + ∑ a, K i a * u a + p * z i) ^ 2 < R ^ 2 := by
  set a : Fin 4 → ℝ := fun i => c i + ∑ a, K i a * u a + p₀ * z i
  set b : Fin 4 → ℝ := fun i => (p - p₀) * z i
  have hA : ∑ i, a i ^ 2 < (R - ε) ^ 2 :=
    quad_box_lt0 (c := fun i => c i + p₀ * z i) (fun s => by simpa only [add_right_comm] using hv s) hu
      |>.trans_eq' (by simp only [a, add_right_comm])
  have hB : ∑ i, b i ^ 2 ≤ ε ^ 2 := by
    simp only [b, mul_pow, ← Finset.mul_sum]; exact hz
  have hcs := Real.sum_mul_le_sqrt_mul_sqrt Finset.univ a b
  set α := Real.sqrt (∑ i, a i ^ 2)
  set β := Real.sqrt (∑ i, b i ^ 2)
  have hα0 : 0 ≤ α := Real.sqrt_nonneg _
  have hβ0 : 0 ≤ β := Real.sqrt_nonneg _
  have hSA : α ^ 2 = ∑ i, a i ^ 2 := Real.sq_sqrt (Finset.sum_nonneg fun i _ => sq_nonneg _)
  have hSB : β ^ 2 = ∑ i, b i ^ 2 := Real.sq_sqrt (Finset.sum_nonneg fun i _ => sq_nonneg _)
  have hRe : 0 ≤ R - ε := by linarith
  have hαlt : α < R - ε := by
    rw [← Real.sqrt_sq hRe]; exact Real.sqrt_lt_sqrt (Finset.sum_nonneg fun i _ => sq_nonneg _) hA
  have hβle : β ≤ ε := by
    rw [← Real.sqrt_sq hε0]; exact Real.sqrt_le_sqrt hB
  have e : ∑ i, (c i + ∑ a, K i a * u a + p * z i) ^ 2 = ∑ i, a i ^ 2 + 2 * ∑ i, a i * b i + ∑ i, b i ^ 2 := by
    simp only [a, b, Finset.mul_sum, ← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl fun i _ => by ring
  rw [e, ← hSA, ← hSB]
  nlinarith

/-! ### Soundness -/

lemma fin4_vals : ((0 : Fin 4) : ℕ) = 0 ∧ ((1 : Fin 4) : ℕ) = 1 ∧ ((2 : Fin 4) : ℕ) = 2 ∧ ((3 : Fin 4) : ℕ) = 3 :=
  ⟨rfl, rfl, rfl, rfl⟩

lemma sel4_eq (s : Fin 4 → Bool) (a : Fin 4) : sel4 (s 0) (s 1) (s 2) (s 3) a = s a := by
  fin_cases a <;> rfl

/-- `w' = M_l⁻¹ (θ₀_j + M_j w + 2πN − θ₀_l)` in terms of `c, K, z`. -/
lemma t0_affine (Bj Bl : BallD) (I : InvD) (N : List ℤ) (w : Fin 4 → ℝ) (i : Fin 4) :
    (MinvR I *ᵥ (th0R Bj + MthR Bj *ᵥ w + (2 * Real.pi) • (fun k : Fin 4 => ((gi N k : ℤ) : ℝ)) - th0R Bl)) i =
      (t0c Bj Bl I i : ℝ) / I.det + ∑ a : Fin 4, (t0K Bj I i a : ℝ) / I.det * w a +
        Real.pi * (2 * 2 ^ pp * (t0z I N i : ℝ) / I.det) := by
  simp only [Matrix.mulVec, dotProduct, MinvR, th0R, MthR, rq, Pi.add_apply, Pi.sub_apply, Pi.smul_apply,
    smul_eq_mul, t0c, t0K, t0z, sum_l4Z, Fin.sum_univ_four, fin4_vals, add_zero]
  push_cast
  have hpp : (2 : ℝ) ^ pp ≠ 0 := by positivity
  by_cases hd : (I.det : ℝ) = 0
  · simp [hd]
  · field_simp
    ring

/-- **T0 soundness.** -/
theorem t0_sound {Dj Dl : SeedD} {I : InvD} {N : List ℤ} {b : Bx} (hI : invOK Dl.B I = true)
    (h : t0OK Dj Dl I N b = true) :
    Dl.B.o = Dj.B.o ∧ ∀ w : Fin 4 → ℝ, b.Mem (rn Dj.r) w → ∃ w' : Fin 4 → ℝ, wnorm w' < rn Dl.r ∧
      th0R Dl.B + MthR Dl.B *ᵥ w' = th0R Dj.B + MthR Dj.B *ᵥ w + (2 * Real.pi) • fun i : Fin 4 => ((gi N i : ℤ) : ℝ) := by
  simp only [t0OK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨ho, hb⟩ := h
  obtain ⟨hζB, hvtx⟩ := t0Box_facts hb
  refine ⟨ho, fun w hw => ?_⟩
  set x := th0R Dj.B + MthR Dj.B *ᵥ w + (2 * Real.pi) • (fun k : Fin 4 => ((gi N k : ℤ) : ℝ)) - th0R Dl.B
  refine ⟨MinvR I *ᵥ x, ?_, ?_⟩
  swap
  · rw [Matrix.mulVec_mulVec, mul_MinvR hI, Matrix.one_mulVec]
    simp only [x]; abel
  -- scales
  have hdet : (I.det : ℝ) ≠ 0 := by exact_mod_cast invOK_det hI
  have hG : (0 : ℝ) < 2 ^ pp := by positivity
  have hm : (0 : ℝ) < 2 ^ b.m := by positivity
  have hq : (0 : ℝ) < piQ := by unfold piQ; positivity
  set X : ℝ := (I.det : ℝ) * 2 ^ pp * 2 ^ b.m * piQ
  have hX : X ≠ 0 := by simp only [X]; positivity
  have hXa : 0 < |X| := abs_pos.mpr hX
  set ζ : ℕ := (t0Zd I N b.m).l1N
  set Bn : ℕ := t0B Dl I b.m
  have hBX : (Bn : ℝ) = rn Dl.r * |X| := by
    simp only [Bn, t0B, X, rn, abs_mul, Nat.cast_mul, Nat.cast_pow, Nat.cast_natAbs, Int.cast_abs,
      abs_of_pos hG, abs_of_pos hm, abs_of_pos hq]
    unfold piQ; push_cast; field_simp; norm_num
  -- the affine map
  set cR : Fin 4 → ℝ := fun i => (t0c Dj.B Dl.B I i : ℝ) / I.det
  set KR : Fin 4 → Fin 4 → ℝ := fun i a => (t0K Dj.B I i a : ℝ) / I.det
  set zR : Fin 4 → ℝ := fun i => 2 * 2 ^ pp * (t0z I N i : ℝ) / I.det
  set lo : Fin 4 → ℝ := fun a => rn Dj.r * b.lo a
  set hi : Fin 4 → ℝ := fun a => rn Dj.r * b.hi a
  have hY : ∀ (s : Fin 4 → Bool) (i : Fin 4),
      cR i + ∑ a, KR i a * (if s a then hi a else lo a) + (piN0 : ℝ) / piQ * zR i =
        (t0Y Dj Dl I N b (sel4 (s 0) (s 1) (s 2) (s 3)) i : ℝ) / X := by
    intro s i
    have hv : ∀ a : Fin 4, (if s a then hi a else lo a) =
        rn Dj.r * (((b.L a + if sel4 (s 0) (s 1) (s 2) (s 3) a then 2 else 0 : ℤ) : ℝ) / 2 ^ b.m) := by
      intro a
      rw [sel4_eq]
      simp only [hi, lo, Bx.hi, Bx.lo]
      split_ifs <;> push_cast <;> ring
    simp only [hv]
    simp only [t0Y, cR, KR, zR, X, rn, sum_l4Z, Fin.sum_univ_four, fin4_vals]
    push_cast
    field_simp
    ring
  -- the vertex tests
  have hvert : ∀ s : Fin 4 → Bool,
      ∑ i, (cR i + ∑ a, KR i a * (if s a then hi a else lo a) + (piN0 : ℝ) / piQ * zR i) ^ 2 <
        (rn Dl.r - ζ / |X|) ^ 2 := by
    intro s
    simp only [hY]
    have hk := hvtx (s 0) (s 1) (s 2) (s 3)
    have hR := (Int.cast_lt (R := ℝ)).mpr hk
    simp only [sum_l4Z] at hR
    push_cast [Nat.cast_sub hζB] at hR
    simp only [div_pow, ← Finset.sum_div, Fin.sum_univ_four, fin4_vals]
    rw [div_lt_iff₀ (by positivity)]
    have e2 : (rn Dl.r - ζ / |X|) ^ 2 * X ^ 2 = ((Bn : ℝ) - ζ) ^ 2 := by
      rw [hBX, ← sq_abs X]; field_simp
    rw [e2]
    exact hR
  -- the `π` direction
  have hZ : ∀ i : Fin 4, zR i = piQ * ((t0Zd I N b.m).get i : ℝ) / X := by
    intro i
    simp only [t0Zd]
    rw [Z4.get_ofFn _ i.2]
    simp only [zR, X]; push_cast; field_simp; ring
  have hz : (Real.pi - piN0 / piQ) ^ 2 * ∑ i, zR i ^ 2 ≤ ((ζ : ℝ) / |X|) ^ 2 := by
    have ht0 : 0 ≤ Real.pi - piN0 / piQ := by linarith [pi_bounds.1]
    have ht1 : (Real.pi - piN0 / piQ) * piQ ≤ 1 := by
      have := pi_bounds.2
      rw [lt_div_iff₀ hq] at this
      have : (Real.pi - piN0 / piQ) * piQ = Real.pi * piQ - piN0 := by field_simp
      linarith
    have hsq : ∑ i : Fin 4, ((t0Zd I N b.m).get i : ℝ) ^ 2 ≤ (ζ : ℝ) ^ 2 := by
      have := Z4.l1N_eq (t0Zd I N b.m)
      have hζ : (ζ : ℝ) = |((t0Zd I N b.m).get 0 : ℝ)| + |((t0Zd I N b.m).get 1 : ℝ)| +
          |((t0Zd I N b.m).get 2 : ℝ)| + |((t0Zd I N b.m).get 3 : ℝ)| := by
        have h' := congrArg (fun z : ℤ => (z : ℝ)) this
        push_cast at h'; exact h'
      rw [hζ, Fin.sum_univ_four]
      simp only [fin4_vals]
      have a0 := abs_nonneg ((t0Zd I N b.m).get 0 : ℝ)
      have a1 := abs_nonneg ((t0Zd I N b.m).get 1 : ℝ)
      have a2 := abs_nonneg ((t0Zd I N b.m).get 2 : ℝ)
      have a3 := abs_nonneg ((t0Zd I N b.m).get 3 : ℝ)
      rw [← sq_abs ((t0Zd I N b.m).get 0 : ℝ), ← sq_abs ((t0Zd I N b.m).get 1 : ℝ),
        ← sq_abs ((t0Zd I N b.m).get 2 : ℝ), ← sq_abs ((t0Zd I N b.m).get 3 : ℝ)]
      nlinarith [mul_nonneg a0 a1, mul_nonneg a0 a2, mul_nonneg a0 a3, mul_nonneg a1 a2, mul_nonneg a1 a3,
        mul_nonneg a2 a3]
    have e : (Real.pi - piN0 / piQ) ^ 2 * ∑ i, zR i ^ 2 =
        ((Real.pi - piN0 / piQ) * piQ) ^ 2 * (∑ i : Fin 4, ((t0Zd I N b.m).get i : ℝ) ^ 2) / X ^ 2 := by
      simp only [hZ, div_pow, mul_pow, ← Finset.sum_div, ← Finset.mul_sum]; ring
    rw [e, div_pow, ← sq_abs X, div_le_div_iff_of_pos_right (by positivity)]
    have h1 : ((Real.pi - piN0 / piQ) * piQ) ^ 2 ≤ 1 := by
      have := mul_nonneg ht0 hq.le
      nlinarith
    calc ((Real.pi - piN0 / piQ) * piQ) ^ 2 * ∑ i : Fin 4, ((t0Zd I N b.m).get i : ℝ) ^ 2
        ≤ 1 * ∑ i : Fin 4, ((t0Zd I N b.m).get i : ℝ) ^ 2 :=
          mul_le_mul_of_nonneg_right h1 (Finset.sum_nonneg fun i _ => sq_nonneg _)
      _ ≤ (ζ : ℝ) ^ 2 := by rw [one_mul]; exact hsq
  have hεR : (ζ : ℝ) / |X| ≤ rn Dl.r := by
    rw [div_le_iff₀ hXa, ← hBX]; exact_mod_cast hζB
  have hlt := quad_box_lt hvert hεR (by positivity) hz (hw : ∀ a, lo a ≤ w a ∧ w a ≤ hi a)
  have hw' : ∀ i, (MinvR I *ᵥ x) i = cR i + ∑ a, KR i a * w a + Real.pi * zR i := by
    intro i
    rw [t0_affine]
  have hsq : ∑ i, (MinvR I *ᵥ x) i ^ 2 < rn Dl.r ^ 2 := by
    simp only [hw']; exact hlt
  unfold wnorm
  rw [show rn Dl.r = Real.sqrt (rn Dl.r ^ 2) from (Real.sqrt_sq (rn_nonneg _)).symm]
  exact Real.sqrt_lt_sqrt (Finset.sum_nonneg fun i _ => sq_nonneg _) hsq

end NoFourMUBs.KernelAtlas.Seed
