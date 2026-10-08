import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

set_option autoImplicit false
universe u
namespace CriticalZeroLight20261003
noncomputable section

structure Data (K : Type u) where
  s : K
  S : K
  t : K
  T : K
  r : K
  Q : K
  u : K
  v : K
  w : K
  U : K
  V : K
  W : K
  pi : K
  PI : K
  up : K
  vp : K
  UP : K
  VP : K

variable {K : Type u} [Field K] [CharZero K]

def newton_m4_p2 (D : Data K) : K := ((((D.S * D.r) - D.UP)^2) - (((D.U * 2) * D.W) * ((D.s * D.Q) - D.up)))
def newton_m3_p0 (D : Data K) : K := (((D.S^3) - (((D.S * 3) * D.U) * D.s)) + (D.U * 3))
def newton_m3_p1 (D : Data K) : K := (((D.S * ((D.S * D.r) - D.UP)) - ((D.r * D.U) * D.s)) + (D.U * D.t))
def newton_m3_p2 (D : Data K) : K := (((D.r * ((D.S * D.r) - D.UP)) - ((D.S * D.W) * D.Q)) + (D.W * D.T))
def newton_m3_p3 (D : Data K) : K := (((D.r^3) - (((D.r * 3) * D.W) * D.Q)) + (D.W * 3))
def newton_m2_m2 (D : Data K) : K := ((((D.S * D.T) - D.PI)^2) - (((D.U * 2) * D.V) * ((D.s * D.t) - D.pi)))
def newton_m2_m1 (D : Data K) : K := (((D.S * ((D.S * D.T) - D.PI)) - ((D.T * D.U) * D.s)) + (D.U * D.Q))
def newton_m2_p0 (D : Data K) : K := ((D.S * D.S) - ((D.U * 2) * D.s))
def newton_m2_p1 (D : Data K) : K := ((D.S * D.r) - D.UP)
def newton_m2_p2 (D : Data K) : K := ((D.r * D.r) - ((D.W * 2) * D.Q))
def newton_m2_p3 (D : Data K) : K := (((D.r * ((D.t * D.r) - D.vp)) - ((D.t * D.W) * D.Q)) + (D.W * D.s))
def newton_m2_p4 (D : Data K) : K := ((((D.t * D.r) - D.vp)^2) - (((D.v * 2) * D.W) * ((D.T * D.Q) - D.VP)))
def newton_m1_m2 (D : Data K) : K := (((D.T * ((D.S * D.T) - D.PI)) - ((D.S * D.V) * D.t)) + (D.V * D.r))
def newton_m1_m1 (D : Data K) : K := ((D.S * D.T) - D.PI)
def newton_m1_p0 (D : Data K) : K := D.S
def newton_m1_p1 (D : Data K) : K := D.r
def newton_m1_p2 (D : Data K) : K := ((D.t * D.r) - D.vp)
def newton_m1_p3 (D : Data K) : K := (((D.t * ((D.t * D.r) - D.vp)) - ((D.r * D.v) * D.T)) + (D.v * D.S))
def newton_p0_m3 (D : Data K) : K := (((D.T^3) - (((D.T * 3) * D.V) * D.t)) + (D.V * 3))
def newton_p0_m2 (D : Data K) : K := ((D.T * D.T) - ((D.V * 2) * D.t))
def newton_p0_m1 (D : Data K) : K := D.T
def newton_p0_p0 (D : Data K) : K := 3
def newton_p0_p1 (D : Data K) : K := D.t
def newton_p0_p2 (D : Data K) : K := ((D.t * D.t) - ((D.v * 2) * D.T))
def newton_p0_p3 (D : Data K) : K := (((D.t^3) - (((D.t * 3) * D.v) * D.T)) + (D.v * 3))
def newton_p1_m3 (D : Data K) : K := (((D.T * ((D.T * D.Q) - D.VP)) - ((D.Q * D.V) * D.t)) + (D.V * D.s))
def newton_p1_m2 (D : Data K) : K := ((D.T * D.Q) - D.VP)
def newton_p1_m1 (D : Data K) : K := D.Q
def newton_p1_p0 (D : Data K) : K := D.s
def newton_p1_p1 (D : Data K) : K := ((D.s * D.t) - D.pi)
def newton_p1_p2 (D : Data K) : K := (((D.t * ((D.s * D.t) - D.pi)) - ((D.s * D.v) * D.T)) + (D.v * D.Q))
def newton_p2_m4 (D : Data K) : K := ((((D.T * D.Q) - D.VP)^2) - (((D.V * 2) * D.w) * ((D.t * D.r) - D.vp)))
def newton_p2_m3 (D : Data K) : K := (((D.Q * ((D.T * D.Q) - D.VP)) - ((D.T * D.w) * D.r)) + (D.w * D.S))
def newton_p2_m2 (D : Data K) : K := ((D.Q * D.Q) - ((D.w * 2) * D.r))
def newton_p2_m1 (D : Data K) : K := ((D.s * D.Q) - D.up)
def newton_p2_p0 (D : Data K) : K := ((D.s * D.s) - ((D.u * 2) * D.S))
def newton_p2_p1 (D : Data K) : K := (((D.s * ((D.s * D.t) - D.pi)) - ((D.t * D.u) * D.S)) + (D.u * D.r))
def newton_p2_p2 (D : Data K) : K := ((((D.s * D.t) - D.pi)^2) - (((D.u * 2) * D.v) * ((D.S * D.T) - D.PI)))
def newton_p3_m3 (D : Data K) : K := (((D.Q^3) - (((D.Q * 3) * D.w) * D.r)) + (D.w * 3))
def newton_p3_m2 (D : Data K) : K := (((D.Q * ((D.s * D.Q) - D.up)) - ((D.s * D.w) * D.r)) + (D.w * D.t))
def newton_p3_m1 (D : Data K) : K := (((D.s * ((D.s * D.Q) - D.up)) - ((D.Q * D.u) * D.S)) + (D.u * D.T))
def newton_p3_p0 (D : Data K) : K := (((D.s^3) - (((D.s * 3) * D.u) * D.S)) + (D.u * 3))
def newton_p4_m2 (D : Data K) : K := ((((D.s * D.Q) - D.up)^2) - (((D.u * 2) * D.w) * ((D.S * D.r) - D.UP)))

def reconstructionData (s S t T r Q z l0 l1 l2 b0 b1 b2 : K) : Data K where
  s := s
  S := S
  t := t
  T := T
  r := r
  Q := Q
  u := l0*b1
  v := l0*b2
  w := l2*b1
  U := l1*b0
  V := l2*b0
  W := l1*b2
  pi := l0*z
  PI := b0*z
  up := b1*z
  vp := b2*z
  UP := l1*z
  VP := l2*z

def zeroSide (X Y z r sign : K) : Data K :=
  let Z := 9-z^2-X-Y
  let s := sign
  let S := sign*X
  let t := sign
  let T := sign*Y
  let rr := sign*r
  let Q := sign*(-r*Y/X)
  let L0 := z*(X+Y+z^2+3*z)
  let L1 := -z*(Y-3*z-9)
  let L2 := -z*(X-3*z-9)
  reconstructionData s S t T rr Q z
    ((rr*s^2+Q*t^2+s*t*(3-Z))/L0)
    ((t*S^2+rr^2*T+rr*S*(3-Y))/L1)
    ((s*T^2+Q^2*S+Q*T*(3-X))/L2)
    ((Q*S^2+rr*T^2+S*T*(3-Z))/L0)
    ((T*s^2+Q^2*t+Q*s*(3-Y))/L1)
    ((S*t^2+rr^2*s+rr*t*(3-X))/L2)


end
end CriticalZeroLight20261003
