import NoFourMUBs.L1.FlatCircuits

/-! Prototype (review only): return R2's cleared coefficients F₀, F₁ of W₁₁ built from the definitions
in `FlatCircuits` (seed-only denominators), checked by the existing Kronecker test `validR`. -/

namespace NoFourMUBs.L1.FlatCircuits

open NoFourMUBs.Kronecker

noncomputable section

namespace R2

/-- `d_G = P₀ P̄₁` (`B1` is `P̄₁`). -/
def dG (G : Gram C0) : Fr := G.P0 * G.B1

/-- The scaled third moments: `Q⁽¹⁾(G, z) = (H₀ + g z H₁) / d_G`, horizontal invariants as in `Qm`. -/
def H0m (G : Gram C0) : Fin 3 → Fin 3 → Fr :=
  let g := H.g; let η := H.eta; let χ := H.chi; let d := dG G
  ![![G.S * d, G.S * G.S * d - 2 * G.s * (g * g + G.c1 * χ + G.c0 * G.c1 * η),
      G.S * G.T * d - (χ + G.c0 * η) * G.B1],
    ![3 * d, G.S * d, G.T * d],
    ![G.r * d, G.S * G.r * d - G.c1 * η * G.P0, G.S * d]]

def H1m (G : Gram C0) : Fin 3 → Fin 3 → Fr :=
  ![![0, -(2 * G.s * (G.c0 - G.c1)), G.B1], ![0, 0, 0], ![0, -G.P0, 0]]

/-- `adj G_h` (so `Ginv = adj · g⁻¹`). -/
def adjG (i j : Fin 3) : Fr :=
  let rs := oth j; let cs := oth i
  (if (i.val + j.val) % 2 = 0 then 1 else -1) * (Gh rs.1 cs.1 * Gh rs.2 cs.2 - Gh rs.1 cs.2 * Gh rs.2 cs.1)

/-- `U = E* adj G_h = −g K` and `U* = adj G_h E`. -/
def U (a' b' : Fin 3) : Fr := Ec 0 a' * adjG 0 b' + Ec 1 a' * adjG 1 b' + Ec 2 a' * adjG 2 b'
def Ust (c' d' : Fin 3) : Fr := adjG c' 0 * E 0 d' + adjG c' 1 * E 1 d' + adjG c' 2 * E 2 d'

def Hh (j : ℕ) : Fin 3 → Fin 3 → Fr := if j = 0 then H0m H else H1m H
def Vv (i : ℕ) : Fin 3 → Fin 3 → Fr := if i = 0 then H0m Vg else H1m Vg

def UH (j : ℕ) (a' b' : Fin 3) : Fr := U a' 0 * Hh j 0 b' + U a' 1 * Hh j 1 b' + U a' 2 * Hh j 2 b'
def T (j : ℕ) (a' c' : Fin 3) : Fr := UH j a' 0 * Ust 0 c' + UH j a' 1 * Ust 1 c' + UH j a' 2 * Ust 2 c'

/-- `J_ij = Σ (V_i)_{ac} (U H_j U*)_{ac}` (no conjugation on `V_i`). -/
def J (i j : ℕ) : Fr := sum9 fun a' c' => Vv i a' c' * T j a' c'

def F1 : Fr := J 0 1 - J 1 0
def F0 : Fr := J 0 0 + H.chi * J 1 0 + H.eta * H.g * H.g * J 1 1 - dG H * dG Vg * H.g * H.g * Vg.S * H.S

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem F1_valid : F1.num.validR 2 = true := by decide +kernel

theorem F0_valid : F0.num.validR 2 = true := by decide +kernel

end R2

end

end NoFourMUBs.L1.FlatCircuits
