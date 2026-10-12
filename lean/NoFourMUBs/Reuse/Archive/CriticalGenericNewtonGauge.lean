import NoFourMUBs.Reuse.Archive.CriticalDataGauge
import NoFourMUBs.Reuse.Archive.CriticalMomentGauge
import NoFourMUBs.Reuse.Archive.CriticalNewtonMoment66

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewtonGauge20261003
open NoFourMUBs.Step2.Critical
open CriticalNewton20261003 CriticalLaurent20261003 CriticalStripMoments20261003
open scoped BigOperators
noncomputable section

def leftData (x y : Fin 6 → ℂ) : Data :=
  dataOf (fun j => x (NoFourMUBs.Step2.Critical.front j)) (fun j => y (NoFourMUBs.Step2.Critical.front j))

def rightData (x y : Fin 6 → ℂ) : Data :=
  dataOf (fun j : Fin 3 => x (j.natAdd 3)) (fun j : Fin 3 => y (j.natAdd 3))

theorem wholeMoment_split (x y : Fin 6 → ℂ) (a b : ℤ) :
    CriticalLaurent20261003.moment x y a b =
      CriticalNewton20261003.moment (fun j => x (NoFourMUBs.Step2.Critical.front j))
        (fun j => y (NoFourMUBs.Step2.Critical.front j)) a b +
      CriticalNewton20261003.moment (fun j : Fin 3 => x (j.natAdd 3))
        (fun j : Fin 3 => y (j.natAdd 3)) a b := by
  simp [CriticalLaurent20261003.moment,CriticalNewton20261003.moment,
    NoFourMUBs.Step2.Critical.front,Fin.sum_univ_succ,Fin.succ,Fin.natAdd]
  ring

theorem wholeMoment_scale (a b : ℂ) (x y : Fin 6 → ℂ) (i j : ℤ) :
    CriticalLaurent20261003.moment (fun k => a*x k) (fun k => b*y k) i j =
      a^i*b^j*CriticalLaurent20261003.moment x y i j := by
  simp only [CriticalLaurent20261003.moment,mul_zpow,Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _
  ring

theorem generic_newton_table (x y : Fin 6 → ℂ)
    (hx : ∀ j,x j≠0) (hy : ∀ j,y j≠0) (k : Fin 43) :
    CriticalLaurent20261003.moment x y (momentIndices k).1 (momentIndices k).2 =
      newtonTable (leftData x y) k+newtonTable (rightData x y) k := by
  rw [wholeMoment_split]
  exact congrArg₂ (·+·)
    (actual_newton_table _ _ (fun j => hx (NoFourMUBs.Step2.Critical.front j))
      (fun j => hy (NoFourMUBs.Step2.Critical.front j)) k)
    (actual_newton_table _ _ (fun j : Fin 3 => hx (j.natAdd 3))
      (fun j : Fin 3 => hy (j.natAdd 3)) k)

/-- The Newton substitution on arbitrary nonzero rows, including reciprocal
gauges whose entries need not have unit norm. -/
theorem generic_newtonPolynomial66 (x y : Fin 6 → ℂ)
    (hx : ∀ j,x j≠0) (hy : ∀ j,y j≠0) :
    momentPolynomial66 (CriticalLaurent20261003.moment x y)=
      newtonPolynomial66 (leftData x y) (rightData x y) := by
  have h00 : CriticalLaurent20261003.moment x y (-4) 2 =
      newton_m4_p2 (leftData x y)+newton_m4_p2 (rightData x y) :=
    generic_newton_table x y hx hy 0
  have h01 : CriticalLaurent20261003.moment x y (-3) 0 =
      newton_m3_p0 (leftData x y)+newton_m3_p0 (rightData x y) :=
    generic_newton_table x y hx hy 1
  have h02 : CriticalLaurent20261003.moment x y (-3) 1 =
      newton_m3_p1 (leftData x y)+newton_m3_p1 (rightData x y) :=
    generic_newton_table x y hx hy 2
  have h03 : CriticalLaurent20261003.moment x y (-3) 2 =
      newton_m3_p2 (leftData x y)+newton_m3_p2 (rightData x y) :=
    generic_newton_table x y hx hy 3
  have h04 : CriticalLaurent20261003.moment x y (-3) 3 =
      newton_m3_p3 (leftData x y)+newton_m3_p3 (rightData x y) :=
    generic_newton_table x y hx hy 4
  have h05 : CriticalLaurent20261003.moment x y (-2) (-2) =
      newton_m2_m2 (leftData x y)+newton_m2_m2 (rightData x y) :=
    generic_newton_table x y hx hy 5
  have h06 : CriticalLaurent20261003.moment x y (-2) (-1) =
      newton_m2_m1 (leftData x y)+newton_m2_m1 (rightData x y) :=
    generic_newton_table x y hx hy 6
  have h07 : CriticalLaurent20261003.moment x y (-2) 0 =
      newton_m2_p0 (leftData x y)+newton_m2_p0 (rightData x y) :=
    generic_newton_table x y hx hy 7
  have h08 : CriticalLaurent20261003.moment x y (-2) 1 =
      newton_m2_p1 (leftData x y)+newton_m2_p1 (rightData x y) :=
    generic_newton_table x y hx hy 8
  have h09 : CriticalLaurent20261003.moment x y (-2) 2 =
      newton_m2_p2 (leftData x y)+newton_m2_p2 (rightData x y) :=
    generic_newton_table x y hx hy 9
  have h10 : CriticalLaurent20261003.moment x y (-2) 3 =
      newton_m2_p3 (leftData x y)+newton_m2_p3 (rightData x y) :=
    generic_newton_table x y hx hy 10
  have h11 : CriticalLaurent20261003.moment x y (-2) 4 =
      newton_m2_p4 (leftData x y)+newton_m2_p4 (rightData x y) :=
    generic_newton_table x y hx hy 11
  have h12 : CriticalLaurent20261003.moment x y (-1) (-2) =
      newton_m1_m2 (leftData x y)+newton_m1_m2 (rightData x y) :=
    generic_newton_table x y hx hy 12
  have h13 : CriticalLaurent20261003.moment x y (-1) (-1) =
      newton_m1_m1 (leftData x y)+newton_m1_m1 (rightData x y) :=
    generic_newton_table x y hx hy 13
  have h14 : CriticalLaurent20261003.moment x y (-1) 0 =
      newton_m1_p0 (leftData x y)+newton_m1_p0 (rightData x y) :=
    generic_newton_table x y hx hy 14
  have h15 : CriticalLaurent20261003.moment x y (-1) 1 =
      newton_m1_p1 (leftData x y)+newton_m1_p1 (rightData x y) :=
    generic_newton_table x y hx hy 15
  have h16 : CriticalLaurent20261003.moment x y (-1) 2 =
      newton_m1_p2 (leftData x y)+newton_m1_p2 (rightData x y) :=
    generic_newton_table x y hx hy 16
  have h17 : CriticalLaurent20261003.moment x y (-1) 3 =
      newton_m1_p3 (leftData x y)+newton_m1_p3 (rightData x y) :=
    generic_newton_table x y hx hy 17
  have h18 : CriticalLaurent20261003.moment x y 0 (-3) =
      newton_p0_m3 (leftData x y)+newton_p0_m3 (rightData x y) :=
    generic_newton_table x y hx hy 18
  have h19 : CriticalLaurent20261003.moment x y 0 (-2) =
      newton_p0_m2 (leftData x y)+newton_p0_m2 (rightData x y) :=
    generic_newton_table x y hx hy 19
  have h20 : CriticalLaurent20261003.moment x y 0 (-1) =
      newton_p0_m1 (leftData x y)+newton_p0_m1 (rightData x y) :=
    generic_newton_table x y hx hy 20
  have h21 : CriticalLaurent20261003.moment x y 0 0 =
      newton_p0_p0 (leftData x y)+newton_p0_p0 (rightData x y) :=
    generic_newton_table x y hx hy 21
  have h22 : CriticalLaurent20261003.moment x y 0 1 =
      newton_p0_p1 (leftData x y)+newton_p0_p1 (rightData x y) :=
    generic_newton_table x y hx hy 22
  have h23 : CriticalLaurent20261003.moment x y 0 2 =
      newton_p0_p2 (leftData x y)+newton_p0_p2 (rightData x y) :=
    generic_newton_table x y hx hy 23
  have h24 : CriticalLaurent20261003.moment x y 0 3 =
      newton_p0_p3 (leftData x y)+newton_p0_p3 (rightData x y) :=
    generic_newton_table x y hx hy 24
  have h25 : CriticalLaurent20261003.moment x y 1 (-3) =
      newton_p1_m3 (leftData x y)+newton_p1_m3 (rightData x y) :=
    generic_newton_table x y hx hy 25
  have h26 : CriticalLaurent20261003.moment x y 1 (-2) =
      newton_p1_m2 (leftData x y)+newton_p1_m2 (rightData x y) :=
    generic_newton_table x y hx hy 26
  have h27 : CriticalLaurent20261003.moment x y 1 (-1) =
      newton_p1_m1 (leftData x y)+newton_p1_m1 (rightData x y) :=
    generic_newton_table x y hx hy 27
  have h28 : CriticalLaurent20261003.moment x y 1 0 =
      newton_p1_p0 (leftData x y)+newton_p1_p0 (rightData x y) :=
    generic_newton_table x y hx hy 28
  have h29 : CriticalLaurent20261003.moment x y 1 1 =
      newton_p1_p1 (leftData x y)+newton_p1_p1 (rightData x y) :=
    generic_newton_table x y hx hy 29
  have h30 : CriticalLaurent20261003.moment x y 1 2 =
      newton_p1_p2 (leftData x y)+newton_p1_p2 (rightData x y) :=
    generic_newton_table x y hx hy 30
  have h31 : CriticalLaurent20261003.moment x y 2 (-4) =
      newton_p2_m4 (leftData x y)+newton_p2_m4 (rightData x y) :=
    generic_newton_table x y hx hy 31
  have h32 : CriticalLaurent20261003.moment x y 2 (-3) =
      newton_p2_m3 (leftData x y)+newton_p2_m3 (rightData x y) :=
    generic_newton_table x y hx hy 32
  have h33 : CriticalLaurent20261003.moment x y 2 (-2) =
      newton_p2_m2 (leftData x y)+newton_p2_m2 (rightData x y) :=
    generic_newton_table x y hx hy 33
  have h34 : CriticalLaurent20261003.moment x y 2 (-1) =
      newton_p2_m1 (leftData x y)+newton_p2_m1 (rightData x y) :=
    generic_newton_table x y hx hy 34
  have h35 : CriticalLaurent20261003.moment x y 2 0 =
      newton_p2_p0 (leftData x y)+newton_p2_p0 (rightData x y) :=
    generic_newton_table x y hx hy 35
  have h36 : CriticalLaurent20261003.moment x y 2 1 =
      newton_p2_p1 (leftData x y)+newton_p2_p1 (rightData x y) :=
    generic_newton_table x y hx hy 36
  have h37 : CriticalLaurent20261003.moment x y 2 2 =
      newton_p2_p2 (leftData x y)+newton_p2_p2 (rightData x y) :=
    generic_newton_table x y hx hy 37
  have h38 : CriticalLaurent20261003.moment x y 3 (-3) =
      newton_p3_m3 (leftData x y)+newton_p3_m3 (rightData x y) :=
    generic_newton_table x y hx hy 38
  have h39 : CriticalLaurent20261003.moment x y 3 (-2) =
      newton_p3_m2 (leftData x y)+newton_p3_m2 (rightData x y) :=
    generic_newton_table x y hx hy 39
  have h40 : CriticalLaurent20261003.moment x y 3 (-1) =
      newton_p3_m1 (leftData x y)+newton_p3_m1 (rightData x y) :=
    generic_newton_table x y hx hy 40
  have h41 : CriticalLaurent20261003.moment x y 3 0 =
      newton_p3_p0 (leftData x y)+newton_p3_p0 (rightData x y) :=
    generic_newton_table x y hx hy 41
  have h42 : CriticalLaurent20261003.moment x y 4 (-2) =
      newton_p4_m2 (leftData x y)+newton_p4_m2 (rightData x y) :=
    generic_newton_table x y hx hy 42
  simp only [momentPolynomial66,newtonPolynomial66,h00,h01,h02,h03,h04,h05,h06,h07,h08,h09,h10,h11,h12,h13,h14,h15,h16,h17,h18,h19,h20,h21,h22,h23,h24,h25,h26,h27,h28,h29,h30,h31,h32,h33,h34,h35,h36,h37,h38,h39,h40,h41,h42]

theorem leftData_scale (a b : ℂ) (x y : Fin 6 → ℂ)
    (ha : a≠0) (hb : b≠0) (hx : ∀ j,x j≠0) (hy : ∀ j,y j≠0) :
    leftData (fun j => a*x j) (fun j => b*y j)=scaleData a b (leftData x y) :=
  dataOf_scaleRow a b _ _ ha hb (fun j => hx (NoFourMUBs.Step2.Critical.front j))
    (fun j => hy (NoFourMUBs.Step2.Critical.front j))

theorem rightData_scale (a b : ℂ) (x y : Fin 6 → ℂ)
    (ha : a≠0) (hb : b≠0) (hx : ∀ j,x j≠0) (hy : ∀ j,y j≠0) :
    rightData (fun j => a*x j) (fun j => b*y j)=scaleData a b (rightData x y) :=
  dataOf_scaleRow a b _ _ ha hb (fun j : Fin 3 => hx (j.natAdd 3))
    (fun j : Fin 3 => hy (j.natAdd 3))

/-- The same nonzero row gauge is applied to both actual halves. -/
theorem generic_newtonPolynomial66_scale (a b : ℂ) (x y : Fin 6 → ℂ)
    (ha : a≠0) (hb : b≠0) (hx : ∀ j,x j≠0) (hy : ∀ j,y j≠0) :
    newtonPolynomial66 (scaleData a b (leftData x y)) (scaleData a b (rightData x y))=
      newtonPolynomial66 (leftData x y) (rightData x y) := by
  have hax (j : Fin 6) : a*x j≠0 := mul_ne_zero ha (hx j)
  have hby (j : Fin 6) : b*y j≠0 := mul_ne_zero hb (hy j)
  calc
    _ = newtonPolynomial66 (leftData (fun j => a*x j) (fun j => b*y j))
        (rightData (fun j => a*x j) (fun j => b*y j)) := by
          rw [leftData_scale a b x y ha hb hx hy,rightData_scale a b x y ha hb hx hy]
    _ = momentPolynomial66 (CriticalLaurent20261003.moment
        (fun j => a*x j) (fun j => b*y j)) :=
          (generic_newtonPolynomial66 _ _ hax hby).symm
    _ = momentPolynomial66 (scaleMoments a b (CriticalLaurent20261003.moment x y)) := by
      congr 1
      funext i j
      exact wholeMoment_scale a b x y i j
    _ = momentPolynomial66 (CriticalLaurent20261003.moment x y) :=
      momentPolynomial66_scale a b _ ha hb
    _ = _ := generic_newtonPolynomial66 x y hx hy

end
#print axioms wholeMoment_split
#print axioms wholeMoment_scale
#print axioms generic_newton_table
#print axioms generic_newtonPolynomial66
#print axioms leftData_scale
#print axioms rightData_scale
#print axioms generic_newtonPolynomial66_scale
end CriticalNewtonGauge20261003
