import Mathlib

/-!
Supporting polynomial lemmas for SideExistence. These are generated from
exactly verified integer cofactor identities. No `sorry`, axiom, existing-side
hypothesis, or generic-specialization argument occurs here.
This source has not been compiled in the supplied environment. It is a
polynomial support module, not a claim that the full target is formalized.
-/

namespace SideExistence.SmallPolynomialCertificates

variable {R : Type*} [CommRing R]

lemma D_conjugation (n m k K a A b c C e h : R)
    (h_hermitian_det : (h + (K * k) + ((-1) * m * n)) = 0)
    (h_core_III : ((C * e) + ((-1) * c * ((K * k) + (m * n))) + (2 * K * b * n) + (2 * a * k * m)) = 0)
    (h_core_II : ((A * e) + (a * (k ^ 2)) + (b * (n ^ 2)) + ((-1) * c * k * n)) = 0)
    : ((h * ((c * n) + ((-2) * a * k))) + ((-1) * e * ((C * n) + ((-2) * A * K)))) = 0 := by
  linear_combination ((c * n) + ((-2) * a * k)) * h_hermitian_det +
    ((-1) * n) * h_core_III +
    (2 * K) * h_core_II

lemma D_discriminant (n k a A b c e : R)
    (h_core_I : ((c ^ 2) + ((-1) * e) + ((-4) * a * b)) = 0)
    (h_core_II : ((A * e) + (a * (k ^ 2)) + (b * (n ^ 2)) + ((-1) * c * k * n)) = 0)
    : ((((c * n) + ((-2) * a * k)) ^ 2) + ((-1) * e * ((n ^ 2) + ((-4) * A * a)))) = 0 := by
  linear_combination (n ^ 2) * h_core_I +
    (4 * a) * h_core_II

lemma d_scaled (n k a c h delta Delta d : R)
    (h_d_original : ((d * h) + ((-1) * Delta * ((c * n) + ((-2) * a * k)))) = 0)
    (h_delta_norm : (((-1) * h) + (Delta * delta)) = 0)
    : (h * ((d * delta) + ((-1) * c * n) + (2 * a * k))) = 0 := by
  linear_combination delta * h_d_original +
    ((c * n) + ((-2) * a * k)) * h_delta_norm

lemma d_scaled_star (n K A C h delta Delta db : R)
    (h_d_original_star : ((db * h) + ((-1) * delta * ((C * n) + ((-2) * A * K)))) = 0)
    (h_delta_norm : (((-1) * h) + (Delta * delta)) = 0)
    : (h * ((Delta * db) + ((-1) * C * n) + (2 * A * K))) = 0 := by
  linear_combination Delta * h_d_original_star +
    ((C * n) + ((-2) * A * K)) * h_delta_norm

lemma d_reality (n k K a A c C e h delta Delta d db : R)
    (h_d_scaled : ((d * delta) + ((-1) * c * n) + (2 * a * k)) = 0)
    (h_d_scaled_star : ((Delta * db) + ((-1) * C * n) + (2 * A * K)) = 0)
    (h_D_conjugation : ((c * h * n) + ((-1) * C * e * n) + ((-2) * a * h * k) + (2 * A * K * e)) = 0)
    (h_delta_norm : (((-1) * h) + (Delta * delta)) = 0)
    (h_delta_square : ((delta ^ 2) + ((-1) * e)) = 0)
    : (delta * h * (d + ((-1) * db))) = 0 := by
  linear_combination h * h_d_scaled +
    ((-1) * e) * h_d_scaled_star +
    1 * h_D_conjugation +
    (db * delta) * h_delta_norm +
    ((-1) * Delta * db) * h_delta_square

lemma d_discriminant (n k a A c e delta d : R)
    (h_d_scaled : ((d * delta) + ((-1) * c * n) + (2 * a * k)) = 0)
    (h_D_discriminant : (((c ^ 2) * (n ^ 2)) + ((-1) * e * (n ^ 2)) + (4 * (a ^ 2) * (k ^ 2)) + (4 * A * a * e) + ((-4) * a * c * k * n)) = 0)
    (h_delta_square : ((delta ^ 2) + ((-1) * e)) = 0)
    : ((delta ^ 2) * ((d ^ 2) + ((-1) * (n ^ 2)) + (4 * A * a))) = 0 := by
  linear_combination ((c * n) + (d * delta) + ((-2) * a * k)) * h_d_scaled +
    1 * h_D_discriminant +
    (((-1) * (n ^ 2)) + (4 * A * a)) * h_delta_square

lemma rho_quadratic (n a A d rho : R)
    (h_rho_definition : (((-1) * d) + ((-1) * n) + (2 * rho)) = 0)
    (h_d_discriminant : ((d ^ 2) + ((-1) * (n ^ 2)) + (4 * A * a)) = 0)
    : ((4 * (rho ^ 2)) + ((-4) * n * rho) + (4 * A * a)) = 0 := by
  linear_combination (d + ((-1) * n) + (2 * rho)) * h_rho_definition +
    1 * h_d_discriminant

lemma q_norm (n a A rho q Q : R)
    (h_rho_quadratic : ((rho ^ 2) + (A * a) + ((-1) * n * rho)) = 0)
    (h_Q_definition : (((-1) * A) + (Q * rho)) = 0)
    (h_q_definition : (((-1) * a) + (q * rho)) = 0)
    : (rho * (((-1) * n) + (rho * (1 + (Q * q))))) = 0 := by
  linear_combination 1 * h_rho_quadratic +
    (q * rho) * h_Q_definition +
    A * h_q_definition

lemma mixed_gamma (n k a c delta d rho q Q cp cm : R)
    (h_cm_definition : (((-1) * delta) + (cm * n) + ((-1) * k * q)) = 0)
    (h_cp_definition : (((-1) * k) + (Q * delta) + (cp * n)) = 0)
    (h_q_definition : (((-1) * a) + (q * rho)) = 0)
    (h_q_norm : (rho + ((-1) * n) + (Q * q * rho)) = 0)
    (h_rho_definition : (((-1) * d) + ((-1) * n) + (2 * rho)) = 0)
    (h_d_scaled : ((d * delta) + ((-1) * c * n) + (2 * a * k)) = 0)
    : (n * (((-1) * c) + (rho * (cm + (cp * q))))) = 0 := by
  linear_combination rho * h_cm_definition +
    (q * rho) * h_cp_definition +
    (2 * k) * h_q_definition +
    ((-1) * delta) * h_q_norm +
    delta * h_rho_definition +
    1 * h_d_scaled

lemma cross_gram (n k delta rho q Q cp cm : R)
    (h_cp_definition : (((-1) * k) + (Q * delta) + (cp * n)) = 0)
    (h_cm_definition : (((-1) * delta) + (cm * n) + ((-1) * k * q)) = 0)
    (h_q_norm : (rho + ((-1) * n) + (Q * q * rho)) = 0)
    : (n * (((-1) * k) + (rho * (cp + (Q * cm))))) = 0 := by
  linear_combination rho * h_cp_definition +
    (Q * rho) * h_cm_definition +
    k * h_q_norm

lemma cross_gram_star (n K Delta rho q Q CP CM : R)
    (h_CP_definition : (((-1) * K) + (CP * n) + (Delta * q)) = 0)
    (h_CM_definition : (((-1) * Delta) + (CM * n) + ((-1) * K * Q)) = 0)
    (h_q_norm : (rho + ((-1) * n) + (Q * q * rho)) = 0)
    : (n * (((-1) * K) + (rho * (CP + (CM * q))))) = 0 := by
  linear_combination rho * h_CP_definition +
    (q * rho) * h_CM_definition +
    K * h_q_norm

lemma determinant (n k delta rho q Q cp cm : R)
    (h_cm_definition : (((-1) * delta) + (cm * n) + ((-1) * k * q)) = 0)
    (h_cp_definition : (((-1) * k) + (Q * delta) + (cp * n)) = 0)
    (h_q_norm : (rho + ((-1) * n) + (Q * q * rho)) = 0)
    : (n * (((-1) * delta) + (rho * (cm + ((-1) * cp * q))))) = 0 := by
  linear_combination rho * h_cm_definition +
    ((-1) * q * rho) * h_cp_definition +
    delta * h_q_norm

lemma beta_product (n k a A b c e delta d rho q Q cp cm : R)
    (h_cp_definition : (((-1) * k) + (Q * delta) + (cp * n)) = 0)
    (h_cm_definition : (((-1) * delta) + (cm * n) + ((-1) * k * q)) = 0)
    (h_q_definition : (((-1) * a) + (q * rho)) = 0)
    (h_q_norm : (rho + ((-1) * n) + (Q * q * rho)) = 0)
    (h_Q_definition : (((-1) * A) + (Q * rho)) = 0)
    (h_delta_square : ((delta ^ 2) + ((-1) * e)) = 0)
    (h_d_scaled : ((d * delta) + ((-1) * c * n) + (2 * a * k)) = 0)
    (h_rho_definition : (((-1) * d) + ((-1) * n) + (2 * rho)) = 0)
    (h_core_II : ((A * e) + (a * (k ^ 2)) + (b * (n ^ 2)) + ((-1) * c * k * n)) = 0)
    : ((n ^ 2) * (((-1) * b) + (cm * cp * rho))) = 0 := by
  linear_combination (cm * n * rho) * h_cp_definition +
    (rho * (k + ((-1) * Q * delta))) * h_cm_definition +
    (k ^ 2) * h_q_definition +
    ((-1) * delta * k) * h_q_norm +
    ((-1) * e) * h_Q_definition +
    ((-1) * Q * rho) * h_delta_square +
    k * h_d_scaled +
    (delta * k) * h_rho_definition +
    (-1) * h_core_II

lemma second_row_norm (n rho q Q mu Mu sig Sig : R)
    (h_sigma_norm : (((-1) * rho) + (Sig * sig)) = 0)
    (h_q_norm : (rho + ((-1) * n) + (Q * q * rho)) = 0)
    (h_n_definition : ((-1) + n + (Mu * mu)) = 0)
    : ((-1) + (Mu * mu) + (Sig * sig) + (Q * Sig * q * sig)) = 0 := by
  linear_combination (1 + (Q * q)) * h_sigma_norm +
    1 * h_q_norm +
    1 * h_n_definition

lemma third_row_core_norm (n m k K h delta Delta rho q Q cp CP cm CM : R)
    (h_cp_definition : (((-1) * k) + (Q * delta) + (cp * n)) = 0)
    (h_CP_definition : (((-1) * K) + (CP * n) + (Delta * q)) = 0)
    (h_cm_definition : (((-1) * delta) + (cm * n) + ((-1) * k * q)) = 0)
    (h_CM_definition : (((-1) * Delta) + (CM * n) + ((-1) * K * Q)) = 0)
    (h_delta_norm : (((-1) * h) + (Delta * delta)) = 0)
    (h_q_norm : (rho + ((-1) * n) + (Q * q * rho)) = 0)
    (h_hermitian_det : (h + (K * k) + ((-1) * m * n)) = 0)
    : ((n ^ 2) * (((-1) * m) + (rho * ((CM * cm) + (CP * cp))))) = 0 := by
  linear_combination (CP * n * rho) * h_cp_definition +
    (rho * (k + ((-1) * Q * delta))) * h_CP_definition +
    (CM * n * rho) * h_cm_definition +
    (rho * (delta + (k * q))) * h_CM_definition +
    (rho * (1 + (Q * q))) * h_delta_norm +
    (h + (K * k)) * h_q_norm +
    n * h_hermitian_det

lemma third_row_norm (m rho cp CP cm CM nu Nu sig Sig : R)
    (h_sigma_norm : (((-1) * rho) + (Sig * sig)) = 0)
    (h_third_row_core_norm : (((-1) * m) + (CM * cm * rho) + (CP * cp * rho)) = 0)
    (h_m_definition : ((-1) + m + (Nu * nu)) = 0)
    : ((-1) + (Nu * nu) + (CM * Sig * cm * sig) + (CP * Sig * cp * sig)) = 0 := by
  linear_combination ((CM * cm) + (CP * cp)) * h_sigma_norm +
    1 * h_third_row_core_norm +
    1 * h_m_definition

lemma matrix_cross (k rho Q cp cm sig Sig : R)
    (h_sigma_norm : (((-1) * rho) + (Sig * sig)) = 0)
    (h_cross_gram : (((-1) * k) + (cp * rho) + (Q * cm * rho)) = 0)
    : (((-1) * k) + (Sig * sig * (cp + (Q * cm)))) = 0 := by
  linear_combination (cp + (Q * cm)) * h_sigma_norm +
    1 * h_cross_gram

lemma matrix_cross_star (K rho q CP CM sig Sig : R)
    (h_sigma_norm : (((-1) * rho) + (Sig * sig)) = 0)
    (h_cross_gram_star : (((-1) * K) + (CP * rho) + (CM * q * rho)) = 0)
    : (((-1) * K) + (Sig * sig * (CP + (CM * q)))) = 0 := by
  linear_combination (CP + (CM * q)) * h_sigma_norm +
    1 * h_cross_gram_star

lemma matrix_det (delta rho q cp cm sig Sig : R)
    (h_sigma_norm : (((-1) * rho) + (Sig * sig)) = 0)
    (h_determinant : (((-1) * delta) + (cm * rho) + ((-1) * cp * q * rho)) = 0)
    : (((-1) * delta) + (Sig * sig * (cm + ((-1) * cp * q)))) = 0 := by
  linear_combination (cm + ((-1) * cp * q)) * h_sigma_norm +
    1 * h_determinant

lemma y_scaled_cp (n k A delta rho Q cp : R)
    (h_cp_definition : (((-1) * k) + (Q * delta) + (cp * n)) = 0)
    (h_Q_definition : (((-1) * A) + (Q * rho)) = 0)
    : ((A * delta) + ((-1) * k * rho) + (cp * n * rho)) = 0 := by
  linear_combination rho * h_cp_definition +
    ((-1) * delta) * h_Q_definition

lemma y_scaled_CP (n K a Delta rho q CP : R)
    (h_CP_definition : (((-1) * K) + (CP * n) + (Delta * q)) = 0)
    (h_q_definition : (((-1) * a) + (q * rho)) = 0)
    : ((Delta * a) + ((-1) * K * rho) + (CP * n * rho)) = 0 := by
  linear_combination rho * h_CP_definition +
    ((-1) * Delta) * h_q_definition

lemma y_scaled_cm (n k a delta rho q cm : R)
    (h_cm_definition : (((-1) * delta) + (cm * n) + ((-1) * k * q)) = 0)
    (h_q_definition : (((-1) * a) + (q * rho)) = 0)
    : (((-1) * a * k) + ((-1) * delta * rho) + (cm * n * rho)) = 0 := by
  linear_combination rho * h_cm_definition +
    k * h_q_definition

lemma y_scaled_CM (n K A Delta rho Q CM : R)
    (h_CM_definition : (((-1) * Delta) + (CM * n) + ((-1) * K * Q)) = 0)
    (h_Q_definition : (((-1) * A) + (Q * rho)) = 0)
    : (((-1) * A * K) + ((-1) * Delta * rho) + (CM * n * rho)) = 0 := by
  linear_combination rho * h_CM_definition +
    K * h_Q_definition

lemma y_scaled_sigma (a rho q mu sig u : R)
    (h_sigma_definition : (sig + ((-1) * u) + ((-1) * mu * q)) = 0)
    (h_q_definition : (((-1) * a) + (q * rho)) = 0)
    : ((rho * sig) + ((-1) * a * mu) + ((-1) * rho * u)) = 0 := by
  linear_combination rho * h_sigma_definition +
    mu * h_q_definition

lemma y_denominator_clear (n k K a A delta Delta rho cp CP cm CM mu nu Nu sig u : R)
    (h_y_scaled_CP : ((Delta * a) + ((-1) * K * rho) + (CP * n * rho)) = 0)
    (h_y_scaled_cm : (((-1) * a * k) + ((-1) * delta * rho) + (cm * n * rho)) = 0)
    (h_y_scaled_sigma : ((rho * sig) + ((-1) * a * mu) + ((-1) * rho * u)) = 0)
    (h_y_scaled_cp : ((A * delta) + ((-1) * k * rho) + (cp * n * rho)) = 0)
    (h_y_scaled_CM : (((-1) * A * K) + ((-1) * Delta * rho) + (CM * n * rho)) = 0)
    : (((n ^ 2) * (rho ^ 3) * ((CP * nu) + (Nu * cm) + (CM * cp * sig))) + ((-1) * n * (rho ^ 2) * ((Nu * ((a * k) + (delta * rho))) + (nu * ((K * rho) + ((-1) * Delta * a))))) + ((-1) * ((A * K) + (Delta * rho)) * ((a * mu) + (rho * u)) * ((k * rho) + ((-1) * A * delta)))) = 0 := by
  linear_combination (n * nu * (rho ^ 2)) * h_y_scaled_CP +
    (Nu * n * (rho ^ 2)) * h_y_scaled_cm +
    (CM * cp * (n ^ 2) * (rho ^ 2)) * h_y_scaled_sigma +
    (CM * n * rho * ((a * mu) + (rho * u))) * h_y_scaled_cp +
    (((a * mu) + (rho * u)) * ((k * rho) + ((-1) * A * delta))) * h_y_scaled_CM

lemma y_delta_reduction (n k K a A e h delta Delta rho mu nu Nu u : R)
    (h_delta_square : ((delta ^ 2) + ((-1) * e)) = 0)
    (h_delta_norm : (((-1) * h) + (Delta * delta)) = 0)
    : ((delta * ((n * (rho ^ 2) * ((Nu * ((a * k) + (delta * rho))) + (nu * ((K * rho) + ((-1) * Delta * a))))) + (((A * K) + (Delta * rho)) * ((a * mu) + (rho * u)) * ((k * rho) + ((-1) * A * delta))))) + ((-1) * delta * ((A * rho * (((-1) * h) + (K * k)) * ((a * mu) + (rho * u))) + (K * n * nu * (rho ^ 3)) + (Nu * a * k * n * (rho ^ 2)))) + ((-1) * e * ((Nu * n * (rho ^ 3)) + ((-1) * K * (A ^ 2) * ((a * mu) + (rho * u))))) + ((-1) * h * ((k * (rho ^ 2) * ((a * mu) + (rho * u))) + ((-1) * a * n * nu * (rho ^ 2))))) = 0 := by
  linear_combination ((Nu * n * (rho ^ 3)) + ((-1) * K * (A ^ 2) * ((a * mu) + (rho * u)))) * h_delta_square +
    ((k * (rho ^ 2) * ((a * mu) + (rho * u))) + ((-1) * A * delta * rho * ((a * mu) + (rho * u))) + ((-1) * a * n * nu * (rho ^ 2))) * h_delta_norm

lemma y_rho_reduction (n k K a A e h delta rho mu nu Nu u : R)
    (h_rho_quadratic : ((rho ^ 2) + (A * a) + ((-1) * n * rho)) = 0)
    : ((delta * ((A * rho * (((-1) * h) + (K * k)) * ((a * mu) + (rho * u))) + (K * n * nu * (rho ^ 3)) + (Nu * a * k * n * (rho ^ 2)))) + (e * ((Nu * n * (rho ^ 3)) + ((-1) * K * (A ^ 2) * ((a * mu) + (rho * u))))) + (h * ((k * (rho ^ 2) * ((a * mu) + (rho * u))) + ((-1) * a * n * nu * (rho ^ 2)))) + ((-1) * rho * ((Nu * e * (n ^ 3)) + (K * delta * nu * (n ^ 3)) + (h * k * u * (n ^ 2)) + ((-1) * K * e * u * (A ^ 2)) + ((-1) * a * h * nu * (n ^ 2)) + (Nu * a * delta * k * (n ^ 2)) + (a * h * k * mu * n) + ((-1) * A * Nu * a * e * n) + ((-1) * A * a * delta * h * mu) + ((-1) * A * a * h * k * u) + ((-1) * A * delta * h * n * u) + (A * K * a * delta * k * mu) + (A * K * delta * k * n * u) + ((-1) * A * K * a * delta * n * nu))) + (A * Nu * a * e * (n ^ 2)) + (A * h * k * mu * (a ^ 2)) + (K * a * e * mu * (A ^ 2)) + ((-1) * A * h * n * nu * (a ^ 2)) + ((-1) * a * delta * h * u * (A ^ 2)) + (A * K * a * delta * nu * (n ^ 2)) + (A * Nu * delta * k * n * (a ^ 2)) + (A * a * h * k * n * u) + (K * a * delta * k * u * (A ^ 2))) = 0 := by
  linear_combination ((rho * ((Nu * e * n) + (h * k * u) + (K * delta * n * nu))) + (Nu * e * (n ^ 2)) + (K * delta * nu * (n ^ 2)) + (a * h * k * mu) + (h * k * n * u) + ((-1) * A * delta * h * u) + ((-1) * a * h * n * nu) + (A * K * delta * k * u) + (Nu * a * delta * k * n)) * h_rho_quadratic

lemma y_rho_delta (n k a c delta d rho : R)
    (h_rho_definition : (((-1) * d) + ((-1) * n) + (2 * rho)) = 0)
    (h_d_scaled : ((d * delta) + ((-1) * c * n) + (2 * a * k)) = 0)
    : (((-1) * c * n) + ((-1) * delta * n) + (2 * a * k) + (2 * delta * rho)) = 0 := by
  linear_combination delta * h_rho_definition +
    1 * h_d_scaled

lemma y_rho_e (n k a c e delta d rho : R)
    (h_rho_definition : (((-1) * d) + ((-1) * n) + (2 * rho)) = 0)
    (h_d_scaled : ((d * delta) + ((-1) * c * n) + (2 * a * k)) = 0)
    (h_delta_square : ((delta ^ 2) + ((-1) * e)) = 0)
    : (((-1) * delta * ((c * n) + ((-2) * a * k))) + ((-1) * e * n) + (2 * e * rho)) = 0 := by
  linear_combination e * h_rho_definition +
    delta * h_d_scaled +
    ((-1) * d) * h_delta_square

lemma y_normal_form (n k K a A c e h delta rho mu nu Nu u : R)
    (h_y_rho_e : (((-1) * e * n) + (2 * e * rho) + ((-1) * c * delta * n) + (2 * a * delta * k)) = 0)
    (h_y_rho_delta : (((-1) * c * n) + ((-1) * delta * n) + (2 * a * k) + (2 * delta * rho)) = 0)
    : ((2 * e * ((rho * ((Nu * e * (n ^ 3)) + (K * delta * nu * (n ^ 3)) + (h * k * u * (n ^ 2)) + ((-1) * K * e * u * (A ^ 2)) + ((-1) * a * h * nu * (n ^ 2)) + (Nu * a * delta * k * (n ^ 2)) + (a * h * k * mu * n) + ((-1) * A * Nu * a * e * n) + ((-1) * A * a * delta * h * mu) + ((-1) * A * a * h * k * u) + ((-1) * A * delta * h * n * u) + (A * K * a * delta * k * mu) + (A * K * delta * k * n * u) + ((-1) * A * K * a * delta * n * nu))) + (A * h * n * nu * (a ^ 2)) + (a * delta * h * u * (A ^ 2)) + ((-1) * A * Nu * a * e * (n ^ 2)) + ((-1) * A * h * k * mu * (a ^ 2)) + ((-1) * K * a * e * mu * (A ^ 2)) + ((-1) * A * K * a * delta * nu * (n ^ 2)) + ((-1) * A * Nu * delta * k * n * (a ^ 2)) + ((-1) * A * a * h * k * n * u) + ((-1) * K * a * delta * k * u * (A ^ 2)))) + ((-1) * Nu * (e ^ 2) * (n ^ 4)) + (K * n * u * (A ^ 2) * (e ^ 2)) + (a * e * h * nu * (n ^ 3)) + ((-1) * K * c * e * nu * (n ^ 4)) + ((-1) * K * delta * e * nu * (n ^ 4)) + ((-1) * Nu * c * delta * e * (n ^ 4)) + ((-1) * e * h * k * u * (n ^ 3)) + (2 * K * a * mu * (A ^ 2) * (e ^ 2)) + (2 * Nu * e * (a ^ 2) * (k ^ 2) * (n ^ 2)) + (3 * A * Nu * a * (e ^ 2) * (n ^ 2)) + (A * c * e * h * u * (n ^ 2)) + (A * delta * e * h * u * (n ^ 2)) + (Nu * a * delta * e * k * (n ^ 3)) + (a * c * delta * h * nu * (n ^ 3)) + ((-1) * Nu * a * c * e * k * (n ^ 3)) + ((-1) * a * e * h * k * mu * (n ^ 2)) + ((-1) * c * delta * h * k * u * (n ^ 3)) + ((-2) * A * delta * h * u * (a ^ 2) * (k ^ 2)) + ((-2) * A * e * h * n * nu * (a ^ 2)) + ((-2) * a * delta * e * h * u * (A ^ 2)) + ((-2) * delta * h * k * nu * (a ^ 2) * (n ^ 2)) + (2 * A * K * e * mu * (a ^ 2) * (k ^ 2)) + (2 * K * a * e * k * nu * (n ^ 3)) + (2 * a * delta * h * u * (k ^ 2) * (n ^ 2)) + (2 * delta * h * mu * n * (a ^ 2) * (k ^ 2)) + (A * K * a * c * e * nu * (n ^ 2)) + (A * Nu * a * c * delta * e * (n ^ 2)) + (A * a * c * e * h * mu * n) + (A * a * delta * e * h * mu * n) + (A * a * e * h * k * n * u) + (K * c * delta * e * n * u * (A ^ 2)) + ((-1) * A * K * c * e * k * u * (n ^ 2)) + ((-1) * A * K * delta * e * k * u * (n ^ 2)) + ((-1) * a * c * delta * h * k * mu * (n ^ 2)) + ((-2) * A * K * e * k * n * nu * (a ^ 2)) + (2 * A * K * a * e * n * u * (k ^ 2)) + (3 * A * K * a * delta * e * nu * (n ^ 2)) + (A * a * c * delta * h * k * n * u) + ((-1) * A * K * a * c * e * k * mu * n) + ((-1) * A * K * a * delta * e * k * mu * n)) = 0 := by
  linear_combination ((Nu * e * (n ^ 3)) + (h * k * u * (n ^ 2)) + ((-1) * K * e * u * (A ^ 2)) + ((-1) * a * h * nu * (n ^ 2)) + (a * h * k * mu * n) + ((-1) * A * Nu * a * e * n) + ((-1) * A * a * h * k * u)) * h_y_rho_e +
    (e * ((K * nu * (n ^ 3)) + (Nu * a * k * (n ^ 2)) + ((-1) * A * a * h * mu) + ((-1) * A * h * n * u) + (A * K * a * k * mu) + (A * K * k * n * u) + ((-1) * A * K * a * n * nu))) * h_y_rho_delta

lemma y_flatness (n k K a A c e h delta Delta rho cp CP cm CM mu nu Nu sig u : R)
    (h_y_denominator_clear : ((CP * nu * (n ^ 2) * (rho ^ 3)) + (Nu * cm * (n ^ 2) * (rho ^ 3)) + ((-1) * Delta * k * u * (rho ^ 3)) + ((-1) * K * n * nu * (rho ^ 3)) + ((-1) * Nu * delta * n * (rho ^ 3)) + (A * Delta * delta * u * (rho ^ 2)) + (CM * cp * sig * (n ^ 2) * (rho ^ 3)) + (Delta * a * n * nu * (rho ^ 2)) + (K * a * delta * mu * (A ^ 2)) + (K * delta * rho * u * (A ^ 2)) + ((-1) * A * K * k * u * (rho ^ 2)) + ((-1) * Delta * a * k * mu * (rho ^ 2)) + ((-1) * Nu * a * k * n * (rho ^ 2)) + (A * Delta * a * delta * mu * rho) + ((-1) * A * K * a * k * mu * rho)) = 0)
    (h_y_delta_reduction : ((Nu * n * (delta ^ 2) * (rho ^ 3)) + ((-1) * Nu * e * n * (rho ^ 3)) + ((-1) * h * k * u * (rho ^ 3)) + (A * delta * h * u * (rho ^ 2)) + (Delta * delta * k * u * (rho ^ 3)) + (K * a * e * mu * (A ^ 2)) + (K * e * rho * u * (A ^ 2)) + (a * h * n * nu * (rho ^ 2)) + ((-1) * A * Delta * u * (delta ^ 2) * (rho ^ 2)) + ((-1) * K * a * mu * (A ^ 2) * (delta ^ 2)) + ((-1) * K * rho * u * (A ^ 2) * (delta ^ 2)) + ((-1) * a * h * k * mu * (rho ^ 2)) + (A * a * delta * h * mu * rho) + (Delta * a * delta * k * mu * (rho ^ 2)) + ((-1) * A * Delta * a * mu * rho * (delta ^ 2)) + ((-1) * Delta * a * delta * n * nu * (rho ^ 2))) = 0)
    (h_y_rho_reduction : ((Nu * e * n * (rho ^ 3)) + (h * k * u * (rho ^ 3)) + ((-1) * Nu * e * rho * (n ^ 3)) + (A * Nu * a * e * (n ^ 2)) + (A * h * k * mu * (a ^ 2)) + (K * delta * n * nu * (rho ^ 3)) + (a * h * k * mu * (rho ^ 2)) + (a * h * nu * rho * (n ^ 2)) + ((-1) * A * delta * h * u * (rho ^ 2)) + ((-1) * A * h * n * nu * (a ^ 2)) + ((-1) * K * delta * nu * rho * (n ^ 3)) + ((-1) * a * delta * h * u * (A ^ 2)) + ((-1) * a * h * n * nu * (rho ^ 2)) + ((-1) * h * k * rho * u * (n ^ 2)) + (A * K * a * delta * nu * (n ^ 2)) + (A * K * delta * k * u * (rho ^ 2)) + (A * Nu * a * e * n * rho) + (A * Nu * delta * k * n * (a ^ 2)) + (A * a * h * k * n * u) + (A * a * h * k * rho * u) + (A * delta * h * n * rho * u) + (K * a * delta * k * u * (A ^ 2)) + (Nu * a * delta * k * n * (rho ^ 2)) + ((-1) * Nu * a * delta * k * rho * (n ^ 2)) + ((-1) * a * h * k * mu * n * rho) + (A * K * a * delta * n * nu * rho) + ((-1) * A * K * delta * k * n * rho * u)) = 0)
    (h_y_normal_form : (((-1) * Nu * (e ^ 2) * (n ^ 4)) + (2 * Nu * rho * (e ^ 2) * (n ^ 3)) + (A * Nu * a * (e ^ 2) * (n ^ 2)) + (K * n * u * (A ^ 2) * (e ^ 2)) + (a * e * h * nu * (n ^ 3)) + ((-1) * K * c * e * nu * (n ^ 4)) + ((-1) * K * delta * e * nu * (n ^ 4)) + ((-1) * Nu * c * delta * e * (n ^ 4)) + ((-1) * e * h * k * u * (n ^ 3)) + ((-2) * K * rho * u * (A ^ 2) * (e ^ 2)) + (2 * Nu * e * (a ^ 2) * (k ^ 2) * (n ^ 2)) + (A * c * e * h * u * (n ^ 2)) + (A * delta * e * h * u * (n ^ 2)) + (Nu * a * delta * e * k * (n ^ 3)) + (a * c * delta * h * nu * (n ^ 3)) + ((-1) * Nu * a * c * e * k * (n ^ 3)) + ((-1) * a * e * h * k * mu * (n ^ 2)) + ((-1) * c * delta * h * k * u * (n ^ 3)) + ((-2) * A * Nu * a * n * rho * (e ^ 2)) + ((-2) * A * delta * h * u * (a ^ 2) * (k ^ 2)) + ((-2) * A * e * h * k * mu * (a ^ 2)) + ((-2) * a * e * h * nu * rho * (n ^ 2)) + ((-2) * delta * h * k * nu * (a ^ 2) * (n ^ 2)) + (2 * A * K * e * mu * (a ^ 2) * (k ^ 2)) + (2 * K * a * e * k * nu * (n ^ 3)) + (2 * K * delta * e * nu * rho * (n ^ 3)) + (2 * a * delta * h * u * (k ^ 2) * (n ^ 2)) + (2 * delta * h * mu * n * (a ^ 2) * (k ^ 2)) + (2 * e * h * k * rho * u * (n ^ 2)) + (A * K * a * c * e * nu * (n ^ 2)) + (A * K * a * delta * e * nu * (n ^ 2)) + (A * Nu * a * c * delta * e * (n ^ 2)) + (A * a * c * e * h * mu * n) + (A * a * delta * e * h * mu * n) + (K * c * delta * e * n * u * (A ^ 2)) + ((-1) * A * K * c * e * k * u * (n ^ 2)) + ((-1) * A * K * delta * e * k * u * (n ^ 2)) + ((-1) * A * a * e * h * k * n * u) + ((-1) * a * c * delta * h * k * mu * (n ^ 2)) + ((-2) * A * K * e * k * n * nu * (a ^ 2)) + ((-2) * A * Nu * delta * e * k * n * (a ^ 2)) + ((-2) * A * a * delta * e * h * mu * rho) + ((-2) * A * a * e * h * k * rho * u) + ((-2) * A * delta * e * h * n * rho * u) + ((-2) * K * a * delta * e * k * u * (A ^ 2)) + (2 * A * K * a * e * n * u * (k ^ 2)) + (2 * Nu * a * delta * e * k * rho * (n ^ 2)) + (2 * a * e * h * k * mu * n * rho) + (A * a * c * delta * h * k * n * u) + ((-1) * A * K * a * c * e * k * mu * n) + ((-1) * A * K * a * delta * e * k * mu * n) + ((-2) * A * K * a * delta * e * n * nu * rho) + (2 * A * K * a * delta * e * k * mu * rho) + (2 * A * K * delta * e * k * n * rho * u)) = 0)
    (h_y_gram_0 : ((Nu * e * (n ^ 4)) + (K * c * nu * (n ^ 4)) + (h * k * u * (n ^ 3)) + ((-1) * a * h * nu * (n ^ 3)) + ((-2) * Nu * (a ^ 2) * (k ^ 2) * (n ^ 2)) + (Nu * a * c * k * (n ^ 3)) + (a * h * k * mu * (n ^ 2)) + ((-1) * A * c * h * u * (n ^ 2)) + ((-1) * K * e * n * u * (A ^ 2)) + ((-3) * A * Nu * a * e * (n ^ 2)) + ((-2) * A * K * mu * (a ^ 2) * (k ^ 2)) + ((-2) * K * a * e * mu * (A ^ 2)) + ((-2) * K * a * k * nu * (n ^ 3)) + (2 * A * h * n * nu * (a ^ 2)) + (A * K * c * k * u * (n ^ 2)) + ((-1) * A * K * a * c * nu * (n ^ 2)) + ((-1) * A * a * c * h * mu * n) + ((-1) * A * a * h * k * n * u) + ((-2) * A * K * a * n * u * (k ^ 2)) + (2 * A * K * k * n * nu * (a ^ 2)) + (A * K * a * c * k * mu * n)) = 0)
    (h_y_gram_1 : ((K * e * nu * (n ^ 4)) + (Nu * c * e * (n ^ 4)) + (c * h * k * u * (n ^ 3)) + ((-1) * A * e * h * u * (n ^ 2)) + ((-1) * Nu * a * e * k * (n ^ 3)) + ((-1) * a * c * h * nu * (n ^ 3)) + ((-2) * a * h * u * (k ^ 2) * (n ^ 2)) + ((-2) * h * mu * n * (a ^ 2) * (k ^ 2)) + (2 * A * h * u * (a ^ 2) * (k ^ 2)) + (2 * a * e * h * u * (A ^ 2)) + (2 * h * k * nu * (a ^ 2) * (n ^ 2)) + (A * K * e * k * u * (n ^ 2)) + (a * c * h * k * mu * (n ^ 2)) + ((-1) * A * Nu * a * c * e * (n ^ 2)) + ((-1) * A * a * e * h * mu * n) + ((-1) * K * c * e * n * u * (A ^ 2)) + ((-3) * A * K * a * e * nu * (n ^ 2)) + (A * K * a * e * k * mu * n) + ((-1) * A * a * c * h * k * n * u)) = 0)
    : (2 * delta * e * (n ^ 2) * (rho ^ 3) * ((CP * nu) + (Nu * cm) + (CM * cp * sig))) = 0 := by
  linear_combination (2 * delta * e) * h_y_denominator_clear +
    (2 * e) * h_y_delta_reduction +
    (2 * e) * h_y_rho_reduction +
    1 * h_y_normal_form +
    e * h_y_gram_0 +
    delta * h_y_gram_1

end SideExistence.SmallPolynomialCertificates
