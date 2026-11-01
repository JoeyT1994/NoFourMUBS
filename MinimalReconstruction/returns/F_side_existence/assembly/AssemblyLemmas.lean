import Mathlib

/-!
Small assembly algebra lemmas for the side-existence proof.

This optional source has not been compiled in the supplied environment.  The
integer polynomial identities are independently checked by verify_assembly.py.
It intentionally does not declare a full side-existence theorem or introduce
unproved axioms.  Capitalized scalar arguments are formal conjugate variables.
-/

namespace SideExistenceAssembly

theorem sigma_norm_numerator (mu Mu u U rho : ℂ) :
    (rho * u + mu * (mu ^ 2 - u * Mu)) *
      (rho * U + Mu * (Mu ^ 2 - U * mu)) - rho ^ 3 =
    (mu * Mu - rho) *
      ((rho ^ 2 - (1 - mu * Mu) * rho +
          (mu ^ 2 - u * Mu) * (Mu ^ 2 - U * mu)) -
        rho * (u * U - 1)) := by
  ring

theorem first_row_flatness_numerator (mu Mu u U rho : ℂ) :
    mu * rho ^ 2 + (mu ^ 2 - u * Mu) * Mu * rho +
        (rho * u + mu * (mu ^ 2 - u * Mu)) * (Mu ^ 2 - U * mu) =
      mu * ((rho ^ 2 - (1 - mu * Mu) * rho +
          (mu ^ 2 - u * Mu) * (Mu ^ 2 - U * mu)) -
        rho * (u * U - 1)) := by
  ring

theorem rho_q_norm_numerator (rho n q Q alpha Alpha : ℂ) :
    rho * (rho * (1 + q * Q) - n) =
      (rho ^ 2 - n * rho + alpha * Alpha) +
      rho * Q * (rho * q - alpha) + alpha * (rho * Q - Alpha) := by
  ring

theorem row_gate_identity (a A cp CP cm CM sig Sig rho : ℂ) :
    sig ^ 2 * (a * CP * Sig + cm * Sig * A) + rho * cp * sig * CM * sig -
      rho * sig * (a * CP + cm * A + sig * cp * CM) =
    sig * (a * CP + cm * A) * (sig * Sig - rho) := by
  ring

theorem gate_to_fourier_identity (a A b B c C sig rho w W : ℂ) :
    rho * w ^ 2 * (w * (a * B + c * A) + W ^ 2 * b * C) -
        (sig ^ 2 * (a * B + c * A) + rho * b * C) =
      (a * B + c * A) * (rho * w ^ 3 - sig ^ 2) +
        rho * (w * W + 1) * b * C * (w * W - 1) := by
  ring

theorem signature_h2_identity (H2 p c P Pi L Lbar g Z : ℂ) :
    L * H2 + g * p =
      L * (H2 - p * (c * Pi - P)) - p * (L * P - g - c * Z) +
        p * c * L * (Pi - Z * Lbar) + p * c * Z * (L * Lbar - 1) := by
  ring

theorem signature_h2_of_relations (H2 p c P Pi L Lbar g Z : ℂ)
    (hLaurent : H2 = p * (c * Pi - P))
    (hLambda : L * P = g + c * Z)
    (hPermBar : Pi = Z * Lbar)
    (hLambdaUnit : L * Lbar = 1) :
    L * H2 = -g * p := by
  linear_combination
    L * hLaurent - p * hLambda + p * c * L * hPermBar +
      p * c * Z * hLambdaUnit

theorem signature_final_identity (pi H2 p pbar L g z : ℂ) :
    -pi * H2 * pbar - g * z =
      -H2 * pbar * (pi - z * L) - z * pbar * (L * H2 + g * p) +
        g * z * (p * pbar - 1) := by
  ring

theorem signature_of_relations (pi H2 p pbar L g z : ℂ)
    (hPerm : pi = z * L)
    (hH2 : L * H2 = -g * p)
    (hProduct : p * pbar = 1) :
    -pi * H2 * pbar = g * z := by
  linear_combination
    -H2 * pbar * hPerm - z * pbar * hH2 + g * z * hProduct

theorem target_scaling (signature g z chi signedISqrtR : ℂ)
    (hSignature : signature = g * z)
    (hRoot : 2 * g * z = chi + signedISqrtR) :
    2 * signature = chi + signedISqrtR := by
  linear_combination 2 * hSignature + hRoot

end SideExistenceAssembly
