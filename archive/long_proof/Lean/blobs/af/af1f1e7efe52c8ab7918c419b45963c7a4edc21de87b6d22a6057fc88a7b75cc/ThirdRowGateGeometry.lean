import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination

/-! Rational geometry of the third-row gate, with explicit scalar residuals. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.ThirdRowGate
universe u
variable {F : Type u} [Field F]

def c2 (m v k n : F) : F := m * k - n * v
def c3 (M V K n : F) : F := n * V - K * M
def c0 (m v k K n d : F) : F := -K * c2 m v k n + m * d
def c1 (M V k K n d : F) : F := k * c3 M V K n + M * d

def geometryConstant (m M v V k K n d u a A Ab : F) : F :=
  n * c0 m v k K n d + 2 * a * c1 M V k K n d +
    u * k * Ab + c3 M V K n * A

def geometryLinear (m M v V k K n d u a A c : F) : F :=
  A * c0 m v k K n d + d * (n * u * k + 2 * a * c2 m v k n) +
    d * c * (n * u * c3 M V K n - 2 * K * a)

theorem geometry_stage1 (m M v V k K n d u U a ab q Q sigma delta Delta rho : F)
    (hn : n ≠ 0) (hq : rho * q = a) (hQ : rho * Q = ab)
    (hb : rho * (1 + q * Q) = n)
    (hs : sigma = u + m * q) (hgate : m + q * M + sigma * Q = 0)
    (hca : n * M + m * ab + U * a = 0) (hd : delta * Delta = d) :
    rho * n ^ 2 *
      (v * ((K - Delta * q) / n) + ((k * q + delta) / n) * V +
        sigma * ((k - delta * Q) / n) * ((K * Q + Delta) / n)) =
      rho * c0 m v k K n d + a * c1 M V k K n d +
        Delta * (rho * u * k + a * c2 m v k n) +
        delta * (rho * c3 M V K n - K * U * a) := by
  have hfield :
      n ^ 2 *
        (v * ((K - Delta * q) / n) + ((k * q + delta) / n) * V +
          sigma * ((k - delta * Q) / n) * ((K * Q + Delta) / n)) =
      n * v * (K - Delta * q) + n * V * (k * q + delta) +
        sigma * (k - delta * Q) * (K * Q + Delta) := by
    field_simp [hn] <;> ring
  have hcollect :
      n * v * (K - Delta * q) + n * V * (k * q + delta) +
        sigma * (k - delta * Q) * (K * Q + Delta) =
      c0 m v k K n d + q * c1 M V k K n d +
        Delta * (u * k + q * c2 m v k n) +
        delta * (n * V + m * K * Q + q * Q * K * M) := by
    simp only [c0, c1, c2, c3]
    linear_combination (k * K - delta * K * Q - d) * hgate +
      Delta * k * hs - sigma * Q * hd
  have hca' : n * M + m * ab = -U * a := by linear_combination hca
  calc
    _ = rho * (n * v * (K - Delta * q) + n * V * (k * q + delta) +
        sigma * (k - delta * Q) * (K * Q + Delta)) := by rw [mul_assoc, hfield]
    _ = rho * (c0 m v k K n d + q * c1 M V k K n d +
        Delta * (u * k + q * c2 m v k n) +
        delta * (n * V + m * K * Q + q * Q * K * M)) := by rw [hcollect]
    _ = rho * c0 m v k K n d + (rho * q) * c1 M V k K n d +
        Delta * (rho * u * k + (rho * q) * c2 m v k n) +
        delta * (rho * c3 M V K n + K * (n * M + m * (rho * Q))) := by
      simp only [c3]
      linear_combination delta * K * M * hb
    _ = _ := by rw [hq, hQ, hca']; ring

#print axioms geometry_stage1

theorem geometry_stage2 (m M v V k K n d u U a A Ab c delta Delta rho : F)
    (hu : u * U = 1) (hd : delta * Delta = d)
    (hd2 : delta ^ 2 = d * u * c)
    (hA : A = (2 * rho - n) * delta) (hAb : Ab = (2 * rho - n) * Delta) :
    2 * d *
      (rho * c0 m v k K n d + a * c1 M V k K n d +
        Delta * (rho * u * k + a * c2 m v k n) +
        delta * (rho * c3 M V K n - K * U * a)) =
      d * geometryConstant m M v V k K n d u a A Ab +
        Delta * geometryLinear m M v V k K n d u a A c := by
  have hp : d * delta = d * u * c * Delta := by
    linear_combination -delta * hd + Delta * hd2
  simp only [geometryConstant, geometryLinear]
  rw [hA, hAb]
  linear_combination -(2 * rho - n) * c0 m v k K n d * hd +
    (n * c3 M V K n - 2 * K * U * a) * hp -
    2 * d * Delta * c * K * a * hu

#print axioms geometry_stage2

theorem geometry_gate_of_residuals [CharZero F]
    (m M v V k K n d u U a ab q Q sigma A Ab c delta Delta rho : F)
    (hn : n ≠ 0) (hdd : d ≠ 0) (hr : rho ≠ 0)
    (hu : u * U = 1) (hq : rho * q = a) (hQ : rho * Q = ab)
    (hb : rho * (1 + q * Q) = n)
    (hs : sigma = u + m * q) (hgate : m + q * M + sigma * Q = 0)
    (hca : n * M + m * ab + U * a = 0) (hd : delta * Delta = d)
    (hd2 : delta ^ 2 = d * u * c)
    (hA : A = (2 * rho - n) * delta) (hAb : Ab = (2 * rho - n) * Delta)
    (h0 : geometryConstant m M v V k K n d u a A Ab = 0)
    (h1 : geometryLinear m M v V k K n d u a A c = 0) :
    v * ((K - Delta * q) / n) + ((k * q + delta) / n) * V +
      sigma * ((k - delta * Q) / n) * ((K * Q + Delta) / n) = 0 := by
  have h := geometry_stage2 m M v V k K n d u U a A Ab c delta Delta rho hu hd hd2 hA hAb
  rw [← geometry_stage1 m M v V k K n d u U a ab q Q sigma delta Delta rho
    hn hq hQ hb hs hgate hca hd, h0, h1] at h
  have hz : (2 * d * rho * n ^ 2) *
      (v * ((K - Delta * q) / n) + ((k * q + delta) / n) * V +
        sigma * ((k - delta * Q) / n) * ((K * Q + Delta) / n)) = 0 := by
    linear_combination h
  exact (mul_eq_zero.mp hz).resolve_left
    (mul_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) hdd) hr) (pow_ne_zero 2 hn))

#print axioms geometry_gate_of_residuals
end StrictReconstruction20261007.ThirdRowGate

