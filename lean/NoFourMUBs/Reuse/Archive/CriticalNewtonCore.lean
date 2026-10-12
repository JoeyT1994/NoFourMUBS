import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Data.Fin.VecNotation

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalNewton20261003
noncomputable section

structure Data where
  s : ℂ
  S : ℂ
  t : ℂ
  T : ℂ
  r : ℂ
  Q : ℂ
  u : ℂ
  v : ℂ
  w : ℂ
  U : ℂ
  V : ℂ
  W : ℂ
  pi : ℂ
  PI : ℂ
  up : ℂ
  vp : ℂ
  UP : ℂ
  VP : ℂ

def rowSum (x : Fin 3 → ℂ) : ℂ := x 0+x 1+x 2
def rowProd (x : Fin 3 → ℂ) : ℂ := x 0*x 1*x 2
def perm (x y : Fin 3 → ℂ) : ℂ :=
  x 1*y 2+x 2*y 0+x 0*y 1+x 2*y 1+x 0*y 2+x 1*y 0
def invRow (x : Fin 3 → ℂ) : Fin 3 → ℂ := fun j => (x j)⁻¹
def ratio (x y : Fin 3 → ℂ) : Fin 3 → ℂ := fun j => x j/y j
def dataOf (x y : Fin 3 → ℂ) : Data where
  s := rowSum x
  S := rowSum (invRow x)
  t := rowSum y
  T := rowSum (invRow y)
  r := rowSum (ratio y x)
  Q := rowSum (ratio x y)
  u := rowProd x
  v := rowProd y
  w := rowProd x / rowProd y
  U := (rowProd x)⁻¹
  V := (rowProd y)⁻¹
  W := rowProd y / rowProd x
  pi := perm x y
  PI := perm (invRow x) (invRow y)
  up := rowProd x * perm (invRow x) (invRow y)
  vp := rowProd y * perm (invRow x) (invRow y)
  UP := perm x y / rowProd x
  VP := perm x y / rowProd y

/-- A literal sum over the three existing columns, including negative powers. -/
def moment (x y : Fin 3 → ℂ) (a b : ℤ) : ℂ :=
  (x 0)^a*(y 0)^b+(x 1)^a*(y 1)^b+(x 2)^a*(y 2)^b

def newton_m4_p2 (D : Data) : ℂ := ((((D.S * D.r) - D.UP)^2) - (((D.U * 2) * D.W) * ((D.s * D.Q) - D.up)))
def newton_m3_p0 (D : Data) : ℂ := (((D.S^3) - (((D.S * 3) * D.U) * D.s)) + (D.U * 3))
def newton_m3_p1 (D : Data) : ℂ := (((D.S * ((D.S * D.r) - D.UP)) - ((D.r * D.U) * D.s)) + (D.U * D.t))
def newton_m3_p2 (D : Data) : ℂ := (((D.r * ((D.S * D.r) - D.UP)) - ((D.S * D.W) * D.Q)) + (D.W * D.T))
def newton_m3_p3 (D : Data) : ℂ := (((D.r^3) - (((D.r * 3) * D.W) * D.Q)) + (D.W * 3))
def newton_m2_m2 (D : Data) : ℂ := ((((D.S * D.T) - D.PI)^2) - (((D.U * 2) * D.V) * ((D.s * D.t) - D.pi)))
def newton_m2_m1 (D : Data) : ℂ := (((D.S * ((D.S * D.T) - D.PI)) - ((D.T * D.U) * D.s)) + (D.U * D.Q))
def newton_m2_p0 (D : Data) : ℂ := ((D.S * D.S) - ((D.U * 2) * D.s))
def newton_m2_p1 (D : Data) : ℂ := ((D.S * D.r) - D.UP)
def newton_m2_p2 (D : Data) : ℂ := ((D.r * D.r) - ((D.W * 2) * D.Q))
def newton_m2_p3 (D : Data) : ℂ := (((D.r * ((D.t * D.r) - D.vp)) - ((D.t * D.W) * D.Q)) + (D.W * D.s))
def newton_m2_p4 (D : Data) : ℂ := ((((D.t * D.r) - D.vp)^2) - (((D.v * 2) * D.W) * ((D.T * D.Q) - D.VP)))
def newton_m1_m2 (D : Data) : ℂ := (((D.T * ((D.S * D.T) - D.PI)) - ((D.S * D.V) * D.t)) + (D.V * D.r))
def newton_m1_m1 (D : Data) : ℂ := ((D.S * D.T) - D.PI)
def newton_m1_p0 (D : Data) : ℂ := D.S
def newton_m1_p1 (D : Data) : ℂ := D.r
def newton_m1_p2 (D : Data) : ℂ := ((D.t * D.r) - D.vp)
def newton_m1_p3 (D : Data) : ℂ := (((D.t * ((D.t * D.r) - D.vp)) - ((D.r * D.v) * D.T)) + (D.v * D.S))
def newton_p0_m3 (D : Data) : ℂ := (((D.T^3) - (((D.T * 3) * D.V) * D.t)) + (D.V * 3))
def newton_p0_m2 (D : Data) : ℂ := ((D.T * D.T) - ((D.V * 2) * D.t))
def newton_p0_m1 (D : Data) : ℂ := D.T
def newton_p0_p0 (D : Data) : ℂ := 3
def newton_p0_p1 (D : Data) : ℂ := D.t
def newton_p0_p2 (D : Data) : ℂ := ((D.t * D.t) - ((D.v * 2) * D.T))
def newton_p0_p3 (D : Data) : ℂ := (((D.t^3) - (((D.t * 3) * D.v) * D.T)) + (D.v * 3))
def newton_p1_m3 (D : Data) : ℂ := (((D.T * ((D.T * D.Q) - D.VP)) - ((D.Q * D.V) * D.t)) + (D.V * D.s))
def newton_p1_m2 (D : Data) : ℂ := ((D.T * D.Q) - D.VP)
def newton_p1_m1 (D : Data) : ℂ := D.Q
def newton_p1_p0 (D : Data) : ℂ := D.s
def newton_p1_p1 (D : Data) : ℂ := ((D.s * D.t) - D.pi)
def newton_p1_p2 (D : Data) : ℂ := (((D.t * ((D.s * D.t) - D.pi)) - ((D.s * D.v) * D.T)) + (D.v * D.Q))
def newton_p2_m4 (D : Data) : ℂ := ((((D.T * D.Q) - D.VP)^2) - (((D.V * 2) * D.w) * ((D.t * D.r) - D.vp)))
def newton_p2_m3 (D : Data) : ℂ := (((D.Q * ((D.T * D.Q) - D.VP)) - ((D.T * D.w) * D.r)) + (D.w * D.S))
def newton_p2_m2 (D : Data) : ℂ := ((D.Q * D.Q) - ((D.w * 2) * D.r))
def newton_p2_m1 (D : Data) : ℂ := ((D.s * D.Q) - D.up)
def newton_p2_p0 (D : Data) : ℂ := ((D.s * D.s) - ((D.u * 2) * D.S))
def newton_p2_p1 (D : Data) : ℂ := (((D.s * ((D.s * D.t) - D.pi)) - ((D.t * D.u) * D.S)) + (D.u * D.r))
def newton_p2_p2 (D : Data) : ℂ := ((((D.s * D.t) - D.pi)^2) - (((D.u * 2) * D.v) * ((D.S * D.T) - D.PI)))
def newton_p3_m3 (D : Data) : ℂ := (((D.Q^3) - (((D.Q * 3) * D.w) * D.r)) + (D.w * 3))
def newton_p3_m2 (D : Data) : ℂ := (((D.Q * ((D.s * D.Q) - D.up)) - ((D.s * D.w) * D.r)) + (D.w * D.t))
def newton_p3_m1 (D : Data) : ℂ := (((D.s * ((D.s * D.Q) - D.up)) - ((D.Q * D.u) * D.S)) + (D.u * D.T))
def newton_p3_p0 (D : Data) : ℂ := (((D.s^3) - (((D.s * 3) * D.u) * D.S)) + (D.u * 3))
def newton_p4_m2 (D : Data) : ℂ := ((((D.s * D.Q) - D.up)^2) - (((D.u * 2) * D.w) * ((D.S * D.r) - D.UP)))

end
end CriticalNewton20261003
