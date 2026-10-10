import Step1.Common

/-! Exact finite seed/lift bookkeeping. Compiled (repaired 10 Oct 2026: rational checks by `norm_num` / kernel reduction).

The integer-vector result suffices for (W). The rational-pair check below
also establishes that the evaluated formal quadratic-field coordinates
are distinct. Linking that quadratic field to complex phases is an
ordinary algebraic embedding lemma, not asserted to be formalized here.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace Step1.FiniteOrbit

abbrev Vector := Fin 4 → ℤ
abbrev PermVector := Fin 3 → Fin 3
abbrev ActionIndex := (Fin 6 × Fin 6) × (Bool × Bool)
abbrev LiftIndex := Bool × (Fin 3 × Fin 3)

def permutations3 : Fin 6 → PermVector :=
  ![![0, 1, 2], ![0, 2, 1], ![1, 0, 2],
    ![1, 2, 0], ![2, 0, 1], ![2, 1, 0]]

theorem permutations3_complete :
    ∀ p : PermVector, Function.Bijective p ↔
      ∃ k : Fin 6, permutations3 k = p := by decide

def baseCorner : Fin 3 → Fin 3 → ℤ :=
  ![![0, 0, 0], ![0, 1, 2], ![0, -1, -2]]

def movedEntry (a : ActionIndex) (i j : Fin 3) : ℤ :=
  let r := permutations3 a.1.1
  let c := permutations3 a.1.2
  let e := if a.2.1 then baseCorner (r j) (c i)
           else baseCorner (r i) (c j)
  if a.2.2 then -e else e

def dephasedEntry (a : ActionIndex) (i j : Fin 3) : ℤ :=
  movedEntry a i j + movedEntry a 0 0 - movedEntry a i 0 - movedEntry a 0 j

def seedAction (a : ActionIndex) : Vector :=
  ![dephasedEntry a 1 1, dephasedEntry a 1 2,
    dephasedEntry a 2 1, dephasedEntry a 2 2]

def seedOrbit : Finset Vector :=
  (Finset.univ : Finset ActionIndex).image seedAction

def orbitTable : Finset Vector := {
    ![-4, -2, -2, -1],
    ![-2, -4, -1, -2],
    ![-2, -1, -4, -2],
    ![-2, -1, 2, 1],
    ![-2, 2, -1, 1],
    ![-1, -2, -2, -4],
    ![-1, -2, 1, 2],
    ![-1, 1, -2, 2],
    ![-1, 1, 1, -1],
    ![1, -1, -1, 1],
    ![1, -1, 2, -2],
    ![1, 2, -1, -2],
    ![1, 2, 2, 4],
    ![2, -2, 1, -1],
    ![2, 1, -2, -1],
    ![2, 1, 4, 2],
    ![2, 4, 1, 2],
    ![4, 2, 2, 1]
  }

theorem action_count : Fintype.card ActionIndex = 144 := by decide
theorem seedOrbit_eq_table : seedOrbit = orbitTable := by decide
theorem orbitTable_card : orbitTable.card = 18 := by decide

def evenTriple (a : LiftIndex) (j : Fin 3) : ℤ :=
  let sg : ℤ := if a.1 then 1 else -1
  if j = a.2.1 then -2 * sg else sg

def oddTriple (a : LiftIndex) (j : Fin 3) : ℤ :=
  let sg : ℤ := if a.1 then 1 else -1
  if j = a.2.2 then 2 * sg else -sg

def seedLift (a : LiftIndex) : Vector :=
  let e := evenTriple a
  let o := oddTriple a
  ![e 0 - o 1, o 0 - e 2, o 0 - e 1, e 0 - o 2]

def liftSet : Finset Vector :=
  (Finset.univ : Finset LiftIndex).image seedLift

theorem lift_count : Fintype.card LiftIndex = 18 := by decide
theorem liftSet_eq_table : liftSet = orbitTable := by decide
theorem all_lifts_are_orbit : liftSet = seedOrbit := by
  rw [liftSet_eq_table, seedOrbit_eq_table]

/-- Multiplication in the explicitly presented quadratic algebra T²=-15. -/
def pairMul (a b : ℚ × ℚ) : ℚ × ℚ :=
  (a.1*b.1 - 15*a.2*b.2, a.1*b.2 + a.2*b.1)

def pairPow (q : ℚ × ℚ) : ℕ → ℚ × ℚ
  | 0 => (1, 0)
  | n+1 => pairMul q (pairPow q n)

def q : ℚ × ℚ := (1/4, 1/4)
def qbar : ℚ × ℚ := (1/4, -1/4)

def signedPower (n : ℤ) : ℚ × ℚ :=
  if 0 ≤ n then pairPow q n.toNat else pairPow qbar (-n).toNat

theorem q_unit : pairMul q qbar = (1, 0) := by norm_num [pairMul, q, qbar]

def coordinateSet : Finset (Fin 4 → ℚ × ℚ) :=
  orbitTable.image (fun v i => signedPower (v i))

theorem algebraic_coordinates_distinct : coordinateSet.card = 18 := by decide +kernel

end Step1.FiniteOrbit
