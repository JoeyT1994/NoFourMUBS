import Root0Centers
import QuadraticTrig
import DirectRadicand
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot0Program20261003
open Mub6.Numerical.IntervalKernel ShoulderRadian20261003 ShoulderQuadratic20261003
open ShoulderRoot0Centers20261003
noncomputable section
def v0 (θ : Fin 4 → ℝ) : ℝ := Real.cos (θ 0)
def v1 (θ : Fin 4 → ℝ) : ℝ := Real.sin (θ 0)
def v2 (θ : Fin 4 → ℝ) : ℝ := Real.cos (θ 1)
def v3 (θ : Fin 4 → ℝ) : ℝ := Real.sin (θ 1)
def v4 (θ : Fin 4 → ℝ) : ℝ := Real.cos (θ 2)
def v5 (θ : Fin 4 → ℝ) : ℝ := Real.sin (θ 2)
def v6 (θ : Fin 4 → ℝ) : ℝ := Real.cos (θ 3)
def v7 (θ : Fin 4 → ℝ) : ℝ := Real.sin (θ 3)
def v8 (θ : Fin 4 → ℝ) : ℝ := ((1:ℚ):ℝ)
def v9 (θ : Fin 4 → ℝ) : ℝ := v0 θ + v8 θ
def v10 (θ : Fin 4 → ℝ) : ℝ := ((0:ℚ):ℝ)
def v11 (θ : Fin 4 → ℝ) : ℝ := v1 θ + v10 θ
def v12 (θ : Fin 4 → ℝ) : ℝ := v9 θ + v2 θ
def v13 (θ : Fin 4 → ℝ) : ℝ := v11 θ + v3 θ
def v14 (θ : Fin 4 → ℝ) : ℝ := -(v12 θ)
def v15 (θ : Fin 4 → ℝ) : ℝ := -(v13 θ)
def v16 (θ : Fin 4 → ℝ) : ℝ := v4 θ + v8 θ
def v17 (θ : Fin 4 → ℝ) : ℝ := v5 θ + v10 θ
def v18 (θ : Fin 4 → ℝ) : ℝ := v16 θ + v6 θ
def v19 (θ : Fin 4 → ℝ) : ℝ := v17 θ + v7 θ
def v20 (θ : Fin 4 → ℝ) : ℝ := -(v18 θ)
def v21 (θ : Fin 4 → ℝ) : ℝ := -(v19 θ)
def v22 (θ : Fin 4 → ℝ) : ℝ := -(v1 θ)
def v23 (θ : Fin 4 → ℝ) : ℝ := v4 θ * v0 θ
def v24 (θ : Fin 4 → ℝ) : ℝ := v5 θ * v22 θ
def v25 (θ : Fin 4 → ℝ) : ℝ := -(v24 θ)
def v26 (θ : Fin 4 → ℝ) : ℝ := v23 θ + v25 θ
def v27 (θ : Fin 4 → ℝ) : ℝ := v4 θ * v22 θ
def v28 (θ : Fin 4 → ℝ) : ℝ := v5 θ * v0 θ
def v29 (θ : Fin 4 → ℝ) : ℝ := v27 θ + v28 θ
def v30 (θ : Fin 4 → ℝ) : ℝ := v26 θ + v8 θ
def v31 (θ : Fin 4 → ℝ) : ℝ := v29 θ + v10 θ
def v32 (θ : Fin 4 → ℝ) : ℝ := -(v3 θ)
def v33 (θ : Fin 4 → ℝ) : ℝ := v6 θ * v2 θ
def v34 (θ : Fin 4 → ℝ) : ℝ := v7 θ * v32 θ
def v35 (θ : Fin 4 → ℝ) : ℝ := -(v34 θ)
def v36 (θ : Fin 4 → ℝ) : ℝ := v33 θ + v35 θ
def v37 (θ : Fin 4 → ℝ) : ℝ := v6 θ * v32 θ
def v38 (θ : Fin 4 → ℝ) : ℝ := v7 θ * v2 θ
def v39 (θ : Fin 4 → ℝ) : ℝ := v37 θ + v38 θ
def v40 (θ : Fin 4 → ℝ) : ℝ := v30 θ + v36 θ
def v41 (θ : Fin 4 → ℝ) : ℝ := v31 θ + v39 θ
def v42 (θ : Fin 4 → ℝ) : ℝ := -(v40 θ)
def v43 (θ : Fin 4 → ℝ) : ℝ := -(v41 θ)
def v44 (θ : Fin 4 → ℝ) : ℝ := v14 θ * v14 θ
def v45 (θ : Fin 4 → ℝ) : ℝ := v15 θ * v15 θ
def v46 (θ : Fin 4 → ℝ) : ℝ := v44 θ + v45 θ
def v47 (θ : Fin 4 → ℝ) : ℝ := v20 θ * v20 θ
def v48 (θ : Fin 4 → ℝ) : ℝ := v21 θ * v21 θ
def v49 (θ : Fin 4 → ℝ) : ℝ := v47 θ + v48 θ
def v50 (θ : Fin 4 → ℝ) : ℝ := v42 θ * v42 θ
def v51 (θ : Fin 4 → ℝ) : ℝ := v43 θ * v43 θ
def v52 (θ : Fin 4 → ℝ) : ℝ := v50 θ + v51 θ
def v53 (θ : Fin 4 → ℝ) : ℝ := v14 θ * v42 θ
def v54 (θ : Fin 4 → ℝ) : ℝ := v15 θ * v43 θ
def v55 (θ : Fin 4 → ℝ) : ℝ := -(v54 θ)
def v56 (θ : Fin 4 → ℝ) : ℝ := v53 θ + v55 θ
def v57 (θ : Fin 4 → ℝ) : ℝ := v14 θ * v43 θ
def v58 (θ : Fin 4 → ℝ) : ℝ := v15 θ * v42 θ
def v59 (θ : Fin 4 → ℝ) : ℝ := v57 θ + v58 θ
def v60 (θ : Fin 4 → ℝ) : ℝ := -(v21 θ)
def v61 (θ : Fin 4 → ℝ) : ℝ := v56 θ * v20 θ
def v62 (θ : Fin 4 → ℝ) : ℝ := v59 θ * v60 θ
def v63 (θ : Fin 4 → ℝ) : ℝ := -(v62 θ)
def v64 (θ : Fin 4 → ℝ) : ℝ := v61 θ + v63 θ
def v65 (θ : Fin 4 → ℝ) : ℝ := v56 θ * v60 θ
def v66 (θ : Fin 4 → ℝ) : ℝ := v59 θ * v20 θ
def v67 (θ : Fin 4 → ℝ) : ℝ := v65 θ + v66 θ
def v68 (θ : Fin 4 → ℝ) : ℝ := ((2:ℚ):ℝ)
def v69 (θ : Fin 4 → ℝ) : ℝ := v64 θ * v68 θ
def v70 (θ : Fin 4 → ℝ) : ℝ := v46 θ + v49 θ
def v71 (θ : Fin 4 → ℝ) : ℝ := v70 θ + v52 θ
def v72 (θ : Fin 4 → ℝ) : ℝ := ((3:ℚ):ℝ)
def v73 (θ : Fin 4 → ℝ) : ℝ := v71 θ * v72 θ
def v74 (θ : Fin 4 → ℝ) : ℝ := ((27:ℚ):ℝ)
def v75 (θ : Fin 4 → ℝ) : ℝ := -(v73 θ)
def v76 (θ : Fin 4 → ℝ) : ℝ := v74 θ + v75 θ
def v77 (θ : Fin 4 → ℝ) : ℝ := v76 θ + v69 θ
def v78 (θ : Fin 4 → ℝ) : ℝ := ((9:ℚ):ℝ)
def v79 (θ : Fin 4 → ℝ) : ℝ := -(v71 θ)
def v80 (θ : Fin 4 → ℝ) : ℝ := v78 θ + v79 θ
def v81 (θ : Fin 4 → ℝ) : ℝ := v80 θ + v69 θ
def v82 (θ : Fin 4 → ℝ) : ℝ := v46 θ * v49 θ
def v83 (θ : Fin 4 → ℝ) : ℝ := v46 θ * v52 θ
def v84 (θ : Fin 4 → ℝ) : ℝ := v82 θ + v83 θ
def v85 (θ : Fin 4 → ℝ) : ℝ := v49 θ * v52 θ
def v86 (θ : Fin 4 → ℝ) : ℝ := v84 θ + v85 θ
def v87 (θ : Fin 4 → ℝ) : ℝ := v46 θ * v49 θ
def v88 (θ : Fin 4 → ℝ) : ℝ := v87 θ * v52 θ
def v89 (θ : Fin 4 → ℝ) : ℝ := -(v88 θ)
def v90 (θ : Fin 4 → ℝ) : ℝ := v86 θ + v89 θ
def v91 (θ : Fin 4 → ℝ) : ℝ := -(v78 θ)
def v92 (θ : Fin 4 → ℝ) : ℝ := v71 θ + v91 θ
def v93 (θ : Fin 4 → ℝ) : ℝ := ((18:ℚ):ℝ)
def v94 (θ : Fin 4 → ℝ) : ℝ := -(v93 θ)
def v95 (θ : Fin 4 → ℝ) : ℝ := v71 θ + v94 θ
def v96 (θ : Fin 4 → ℝ) : ℝ := v92 θ * v95 θ
def v97 (θ : Fin 4 → ℝ) : ℝ := -(v96 θ)
def v98 (θ : Fin 4 → ℝ) : ℝ := v90 θ + v97 θ
def v99 (θ : Fin 4 → ℝ) : ℝ := ((15:ℚ):ℝ)
def v100 (θ : Fin 4 → ℝ) : ℝ := -(v99 θ)
def v101 (θ : Fin 4 → ℝ) : ℝ := v71 θ + v100 θ
def v102 (θ : Fin 4 → ℝ) : ℝ := v101 θ * v69 θ
def v103 (θ : Fin 4 → ℝ) : ℝ := v98 θ + v102 θ
def v104 (θ : Fin 4 → ℝ) : ℝ := v77 θ * v77 θ
def v105 (θ : Fin 4 → ℝ) : ℝ := ((4:ℚ):ℝ)
def v106 (θ : Fin 4 → ℝ) : ℝ := v104 θ * v105 θ
def v107 (θ : Fin 4 → ℝ) : ℝ := v106 θ * v81 θ
def v108 (θ : Fin 4 → ℝ) : ℝ := v103 θ * v103 θ
def v109 (θ : Fin 4 → ℝ) : ℝ := -(v108 θ)
def v110 (θ : Fin 4 → ℝ) : ℝ := v107 θ + v109 θ
def s (θ : Fin 4 → ℝ) : ℂ := -(1+cis (θ 0)+cis (θ 1))
def t (θ : Fin 4 → ℝ) : ℂ := -(1+cis (θ 2)+cis (θ 3))
def r (θ : Fin 4 → ℝ) : ℂ := -(1+cis (θ 2)*star (cis (θ 0))+cis (θ 3)*star (cis (θ 1)))
theorem bind_X (θ : Fin 4 → ℝ) : v46 θ=Complex.normSq (s θ) := by
  simp [v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,s,t,r,cis,Complex.normSq_apply,Complex.add_re,Complex.add_im,Complex.neg_re,Complex.neg_im,Complex.mul_re,Complex.mul_im,Complex.star_def,Complex.conj_re,Complex.conj_im] <;> ring
theorem bind_Y (θ : Fin 4 → ℝ) : v49 θ=Complex.normSq (t θ) := by
  simp [v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47,v48,v49,s,t,r,cis,Complex.normSq_apply,Complex.add_re,Complex.add_im,Complex.neg_re,Complex.neg_im,Complex.mul_re,Complex.mul_im,Complex.star_def,Complex.conj_re,Complex.conj_im] <;> ring
theorem bind_Z (θ : Fin 4 → ℝ) : v52 θ=Complex.normSq (r θ) := by
  simp [v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47,v48,v49,v50,v51,v52,s,t,r,cis,Complex.normSq_apply,Complex.add_re,Complex.add_im,Complex.neg_re,Complex.neg_im,Complex.mul_re,Complex.mul_im,Complex.star_def,Complex.conj_re,Complex.conj_im] <;> ring
theorem bind_J (θ : Fin 4 → ℝ) : v69 θ=2*((s θ)*(r θ)*star (t θ)).re := by
  simp [v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47,v48,v49,v50,v51,v52,v53,v54,v55,v56,v57,v58,v59,v60,v61,v62,v63,v64,v65,v66,v67,v68,v69,s,t,r,cis,Complex.normSq_apply,Complex.add_re,Complex.add_im,Complex.neg_re,Complex.neg_im,Complex.mul_re,Complex.mul_im,Complex.star_def,Complex.conj_re,Complex.conj_im] <;> ring
theorem program_radicand (θ : Fin 4 → ℝ) : v110 θ=(ShoulderPhaseGate20261002.radicand (s θ) (t θ) (r θ)).re := by
  rw [ShoulderDirectR20261003.complex_radicand_real]
  rw [← bind_X θ,← bind_Y θ,← bind_Z θ,← bind_J θ]
  simp [v70,v71,v72,v73,v74,v75,v76,v77,v78,v79,v80,v81,v82,v83,v84,v85,v86,v87,v88,v89,v90,v91,v92,v93,v94,v95,v96,v97,v98,v99,v100,v101,v102,v103,v104,v105,v106,v107,v108,v109,v110,v8,v10,v68,v72,v74,v78,v93,v99,v105,ShoulderDirectR20261003.realR,ShoulderDirectR20261003.realG,ShoulderDirectR20261003.realEta,ShoulderDirectR20261003.realChi] <;> ring
#print axioms program_radicand
end
end ShoulderRoot0Program20261003
