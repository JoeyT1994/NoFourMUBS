import Mathlib.Data.Real.Basic
import Mathlib.Tactic

/-!
# Z's scalar formulas

Return Z, THEOREM.md §§4–6. The formulas are polymorphic over fields so that the
rational checker and the real theorem use the same expressions. `Accepts` only
checks scalar inequalities: the constants must separately be proved to bound
the centre tensors, normal basis and side-signature derivatives.
-/

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

/-- Upper bounds used by Z's refined contraction and direct remainder. -/
structure Bounds (K : Type*) where
  r : K
  tau : K
  x : K
  u : K
  beta : K
  c : K
  d : K
  L3 : K
  t3 : K
  t4 : K
  L5 : K
  a2 : K
  L3a : K
  epsP : K
  epsU : K
  n : K
  deriving Repr

namespace Bounds

variable {K : Type*} [Field K]

/-- Z (7): the predictor residual bound. -/
def b0 (B : Bounds K) : K := B.t3 * B.r ^ 3 / 6 + B.t4 * B.r ^ 4 / 24 + B.L5 * B.r ^ 5 / 120

/-- Z (7): first derivative of the predictor residual. -/
def b1 (B : Bounds K) : K := B.t3 * B.r ^ 2 / 2 + B.t4 * B.r ^ 3 / 6 + B.L5 * B.r ^ 4 / 24

/-- Z (7): second derivative of the predictor residual. -/
def b2 (B : Bounds K) : K := B.t3 * B.r + B.t4 * B.r ^ 2 / 2 + B.L5 * B.r ^ 3 / 6

def base (B : Bounds K) : K := B.u * B.r + B.beta * B.r ^ 2 / 2

def qbase (B : Bounds K) : K := B.c * B.r + B.a2 * B.r ^ 2 / 2 + B.L3a * B.r ^ 3 / 6

/-- Z (8), retaining the quadratic normal-variation term and its factor `1/2`. -/
def q (B : Bounds K) : K :=
  B.qbase + (B.d + B.L3 * B.x ^ 2 * B.base) * B.tau + B.L3 * B.x ^ 3 * B.tau ^ 2 / 2

/-- Z (12): the direct horizontal-phase remainder. -/
def ndirect (B : Bounds K) : K := B.beta * B.r ^ 2 / 2 + B.x * B.tau

/-- Z §5: correction for the recorded centre and tangent frame. -/
def nrecord (B : Bounds K) : K := B.ndirect + B.epsP + B.r * B.epsU

end Bounds

/-- Six norm bounds for one complementary side, Z (14). `gH2` is the spectral
norm of the scalar symmetric `4 × 4` tensor, not a coordinatewise maximum. -/
structure SideBounds (K : Type*) where
  AU : K
  AH2 : K
  AX : K
  gU : K
  gH2 : K
  gX : K
  /-- A lower bound on the signed centre signature: `o ψh` or `-o ψv`. -/
  signedCentre : K
  deriving Repr

namespace SideBounds

variable {K : Type*} [Field K]

def eps (S : SideBounds K) (B : Bounds K) : K := S.AU * B.r + S.AH2 * B.r ^ 2 / 2 + S.AX * B.tau

def variation (S : SideBounds K) (B : Bounds K) : K :=
  S.gU * B.r + S.gH2 * B.r ^ 2 / 2 + S.gX * B.tau + 36 * (S.eps B) ^ 2

/-- Z (15). Using a lower bound for `signedCentre` makes this a lower margin. -/
def margin (S : SideBounds K) (B : Bounds K) : K := S.signedCentre - S.variation B

end SideBounds

def SideBounds.Nonneg {K : Type*} [Zero K] [LE K] (S : SideBounds K) : Prop :=
  0 ≤ S.AU ∧ 0 ≤ S.AH2 ∧ 0 ≤ S.AX ∧ 0 ≤ S.gU ∧ 0 ≤ S.gH2 ∧ 0 ≤ S.gX

namespace Bounds

variable {K : Type*} [Field K] [LinearOrder K] [IsStrictOrderedRing K]

def Nonneg (B : Bounds K) : Prop :=
  0 ≤ B.x ∧ 0 ≤ B.u ∧ 0 ≤ B.beta ∧ 0 ≤ B.c ∧ 0 ≤ B.d ∧ 0 ≤ B.L3 ∧
  0 ≤ B.t3 ∧ 0 ≤ B.t4 ∧ 0 ≤ B.L5 ∧ 0 ≤ B.a2 ∧ 0 ≤ B.L3a ∧ 0 ≤ B.epsP ∧ 0 ≤ B.epsU

/-- Scalar acceptance, assuming the bounds have been justified analytically. -/
def Accepts (B : Bounds K) (h v : SideBounds K) : Prop :=
  B.Nonneg ∧ h.Nonneg ∧ v.Nonneg ∧ 0 < B.r ∧ 0 < B.tau ∧ B.q < 1 ∧ B.b0 + B.q * B.tau < B.tau ∧
  0 < h.margin B ∧ 0 < v.margin B ∧ B.nrecord ≤ B.n

end Bounds

/-- Signed variation bounds preserve the intended orientation, Z (14)–(15). -/
theorem orientation_of_margin {o ψ ψ0 v : ℝ} (ho : o = 1 ∨ o = -1)
    (hvariation : |ψ - ψ0| ≤ v) (hmargin : 0 < o * ψ0 - v) :
    o * ψ0 - v ≤ o * ψ ∧ 0 < o * ψ := by
  obtain ⟨hlo, hhi⟩ := abs_le.mp hvariation
  rcases ho with rfl | rfl <;> constructor <;> nlinarith

/-- The strict seed lower bound from either signed side margin, Z §6. -/
theorem strictness_of_margin {R ψ o m : ℝ} (ho : o ^ 2 = 1)
    (hR : R = 4 * ψ ^ 2) (hm : 0 < m) (hψ : m ≤ o * ψ) :
    4 * m ^ 2 ≤ R ∧ 0 < R := by
  have hsq : m ^ 2 ≤ (o * ψ) ^ 2 := pow_le_pow_left₀ hm.le hψ 2
  rw [mul_pow, ho, one_mul] at hsq
  constructor <;> nlinarith [sq_pos_of_pos hm]

end NoFourMUBs.SeedAtlas.Method.WholeBall
