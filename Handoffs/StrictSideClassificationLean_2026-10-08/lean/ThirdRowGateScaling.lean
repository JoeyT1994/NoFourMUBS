import ThirdRowGateDefs
import ThirdRowGateGeometry

/-! Exact scaling between six-correlation polynomials and normalized geometry. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.ThirdRowGate
universe u
variable {F : Type u} [Field F] [CharZero F]

theorem constant_geometry_scaling (s S t T r Q l0 b z Z : F) :
    let e := coefficients s S t T r Q
    let m := s / 3
    let M := S / 3
    let v := t / 3
    let V := T / 3
    let n := 1 - m * M
    let k := r / 3 - v * M
    let K := Q / 3 - V * m
    let d := (PreRhoAlignment.gramData s S t T r Q).g / 27
    let u := l0 * b
    let a := m ^ 2 - u * M
    let A := n * (2 * m * v - z * l0 / 3) - 2 * a * k
    let uAb := n * (2 * u * M * V - b * Z / 3) - 2 * (u * M ^ 2 - m) * K
    27 * (n * c0 m v k K n d + 2 * a * c1 M V k K n d +
      k * uAb + c3 M V K n * A) =
      n * (e.f0 + e.fu * (l0 * b) + e.fl * (l0 * z) + e.fb * (b * Z)) := by
  simp only [coefficients, PreRhoAlignment.gramData, c0, c1, c2, c3]
  ring

#print axioms constant_geometry_scaling

theorem linear_geometry_scaling (s S t T r Q l0 b c z : F) :
    let e := coefficients s S t T r Q
    let m := s / 3
    let M := S / 3
    let v := t / 3
    let V := T / 3
    let n := 1 - m * M
    let k := r / 3 - v * M
    let K := Q / 3 - V * m
    let d := (PreRhoAlignment.gramData s S t T r Q).g / 27
    let u := l0 * b
    let a := m ^ 2 - u * M
    let A := n * (2 * m * v - z * l0 / 3) - 2 * a * k
    2187 * geometryLinear m M v V k K n d u a A c =
      e.e0 + e.eu * (l0 * b) + e.el * (l0 * z) + e.ec * c + e.euc * (l0 * b * c) := by
  simp only [coefficients, PreRhoAlignment.gramData, geometryLinear, c0, c1, c2, c3]
  ring

#print axioms linear_geometry_scaling
end StrictReconstruction20261007.ThirdRowGate

