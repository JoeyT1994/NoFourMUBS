import PhaseCubeCertificates

namespace Mub6.PhaseCube.Generated

/- Case 0: near one, halfwidth 1/10 -/
def box0 : TargetBox := { reLo := (9 / 10), reHi := (11 / 10), imLo := (-1 / 10), imHi := (1 / 10) }
def recipe0 : RootRecipe := { cx := (1 / 1), cy := (0 / 1), rx := (1 / 10), ry := (1 / 10), residual := (1 / 50), coarse := (151850025 / 2147483648), radius := (51918005209 / 1099511627776) }
theorem valid0 : recipe0.Valid box0 := by
  norm_num [RootRecipe.Valid, RootRecipe.cubeRe, RootRecipe.cubeIm, recipe0, box0]
theorem enclosure0 (z : ℂ) (hz : box0.Contains z) (hu : Complex.normSq z=1) :
    ∃ w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe0.center) ≤ (recipe0.radius : ℝ)^2 := by
  obtain ⟨w,hw,hwn,hd,_⟩ := phase_box_root_sound recipe0 box0 valid0 z hz hu
  exact ⟨w,hw,hwn,hd⟩
theorem unique0 (z : ℂ) (hz : box0.Contains z) (hu : Complex.normSq z=1) :
    ∃! w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe0.center) ≤ (recipe0.radius : ℝ)^2 := by
  apply phase_box_root_unique recipe0 box0 valid0 _ z hz hu
  norm_num [recipe0]
#print axioms valid0
#print axioms enclosure0
#print axioms unique0

/- Case 1: near one, halfwidth 1/100 -/
def box1 : TargetBox := { reLo := (99 / 100), reHi := (101 / 100), imLo := (-1 / 100), imHi := (1 / 100) }
def recipe1 : RootRecipe := { cx := (1 / 1), cy := (0 / 1), rx := (1 / 100), ry := (1 / 100), residual := (1 / 5000), coarse := (30370005 / 4294967296), radius := (1295808477 / 274877906944) }
theorem valid1 : recipe1.Valid box1 := by
  norm_num [RootRecipe.Valid, RootRecipe.cubeRe, RootRecipe.cubeIm, recipe1, box1]
theorem enclosure1 (z : ℂ) (hz : box1.Contains z) (hu : Complex.normSq z=1) :
    ∃ w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe1.center) ≤ (recipe1.radius : ℝ)^2 := by
  obtain ⟨w,hw,hwn,hd,_⟩ := phase_box_root_sound recipe1 box1 valid1 z hz hu
  exact ⟨w,hw,hwn,hd⟩
theorem unique1 (z : ℂ) (hz : box1.Contains z) (hu : Complex.normSq z=1) :
    ∃! w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe1.center) ≤ (recipe1.radius : ℝ)^2 := by
  apply phase_box_root_unique recipe1 box1 valid1 _ z hz hu
  norm_num [recipe1]
#print axioms valid1
#print axioms enclosure1
#print axioms unique1

/- Case 2: near one, halfwidth 1/1000000 -/
def box2 : TargetBox := { reLo := (999999 / 1000000), reHi := (1000001 / 1000000), imLo := (-1 / 1000000), imHi := (1 / 1000000) }
def recipe2 : RootRecipe := { cx := (1 / 1), cy := (0 / 1), rx := (1 / 1000000), ry := (1 / 1000000), residual := (1 / 500000000000), coarse := (777473 / 1099511627776), radius := (518315 / 1099511627776) }
theorem valid2 : recipe2.Valid box2 := by
  norm_num [RootRecipe.Valid, RootRecipe.cubeRe, RootRecipe.cubeIm, recipe2, box2]
theorem enclosure2 (z : ℂ) (hz : box2.Contains z) (hu : Complex.normSq z=1) :
    ∃ w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe2.center) ≤ (recipe2.radius : ℝ)^2 := by
  obtain ⟨w,hw,hwn,hd,_⟩ := phase_box_root_sound recipe2 box2 valid2 z hz hu
  exact ⟨w,hw,hwn,hd⟩
theorem unique2 (z : ℂ) (hz : box2.Contains z) (hu : Complex.normSq z=1) :
    ∃! w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe2.center) ≤ (recipe2.radius : ℝ)^2 := by
  apply phase_box_root_unique recipe2 box2 valid2 _ z hz hu
  norm_num [recipe2]
#print axioms valid2
#print axioms enclosure2
#print axioms unique2

/- Case 3: negative-real argument cut -/
def box3 : TargetBox := { reLo := (-1000001 / 1000000), reHi := (-999999 / 1000000), imLo := (-1 / 1000000), imHi := (1 / 1000000) }
def recipe3 : RootRecipe := { cx := (-1 / 1), cy := (0 / 1), rx := (1 / 1000000), ry := (1 / 1000000), residual := (1 / 500000000000), coarse := (777473 / 1099511627776), radius := (518315 / 1099511627776) }
theorem valid3 : recipe3.Valid box3 := by
  norm_num [RootRecipe.Valid, RootRecipe.cubeRe, RootRecipe.cubeIm, recipe3, box3]
theorem enclosure3 (z : ℂ) (hz : box3.Contains z) (hu : Complex.normSq z=1) :
    ∃ w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe3.center) ≤ (recipe3.radius : ℝ)^2 := by
  obtain ⟨w,hw,hwn,hd,_⟩ := phase_box_root_sound recipe3 box3 valid3 z hz hu
  exact ⟨w,hw,hwn,hd⟩
theorem unique3 (z : ℂ) (hz : box3.Contains z) (hu : Complex.normSq z=1) :
    ∃! w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe3.center) ≤ (recipe3.radius : ℝ)^2 := by
  apply phase_box_root_unique recipe3 box3 valid3 _ z hz hu
  norm_num [recipe3]
#print axioms valid3
#print axioms enclosure3
#print axioms unique3

/- Case 4: negative-real argument cut, proposed center -/
def box4 : TargetBox := { reLo := (-1000001 / 1000000), reHi := (-999999 / 1000000), imLo := (-1 / 1000000), imHi := (1 / 1000000) }
def recipe4 : RootRecipe := { cx := (880961760 / 1761923521), cy := (1525870529 / 1761923521), rx := (5469670438714779469872549761 / 5469670438712136584591549761000000), ry := (5475047373060702339280549761 / 5469670438712136584591549761000000), residual := (5475050015948626224561549761 / 2734835219356068292295774880500000000000), coarse := (777855 / 1099511627776), radius := (259285 / 549755813888) }
theorem valid4 : recipe4.Valid box4 := by
  norm_num [RootRecipe.Valid, RootRecipe.cubeRe, RootRecipe.cubeIm, recipe4, box4]
theorem enclosure4 (z : ℂ) (hz : box4.Contains z) (hu : Complex.normSq z=1) :
    ∃ w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe4.center) ≤ (recipe4.radius : ℝ)^2 := by
  obtain ⟨w,hw,hwn,hd,_⟩ := phase_box_root_sound recipe4 box4 valid4 z hz hu
  exact ⟨w,hw,hwn,hd⟩
theorem unique4 (z : ℂ) (hz : box4.Contains z) (hu : Complex.normSq z=1) :
    ∃! w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe4.center) ≤ (recipe4.radius : ℝ)^2 := by
  apply phase_box_root_unique recipe4 box4 valid4 _ z hz hu
  norm_num [recipe4]
#print axioms valid4
#print axioms enclosure4
#print axioms unique4

/- Case 5: imaginary axis -/
def box5 : TargetBox := { reLo := (-1 / 1000000), reHi := (1 / 1000000), imLo := (999999 / 1000000), imHi := (1000001 / 1000000) }
def recipe5 : RootRecipe := { cx := (1525870529 / 1761923521), cy := (880961760 / 1761923521), rx := (5475047373060702339280549761 / 5469670438712136584591549761000000), ry := (5469670438714779469872549761 / 5469670438712136584591549761000000), residual := (5475050015948626224561549761 / 2734835219356068292295774880500000000000), coarse := (777855 / 1099511627776), radius := (259285 / 549755813888) }
theorem valid5 : recipe5.Valid box5 := by
  norm_num [RootRecipe.Valid, RootRecipe.cubeRe, RootRecipe.cubeIm, recipe5, box5]
theorem enclosure5 (z : ℂ) (hz : box5.Contains z) (hu : Complex.normSq z=1) :
    ∃ w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe5.center) ≤ (recipe5.radius : ℝ)^2 := by
  obtain ⟨w,hw,hwn,hd,_⟩ := phase_box_root_sound recipe5 box5 valid5 z hz hu
  exact ⟨w,hw,hwn,hd⟩
theorem unique5 (z : ℂ) (hz : box5.Contains z) (hu : Complex.normSq z=1) :
    ∃! w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe5.center) ≤ (recipe5.radius : ℝ)^2 := by
  apply phase_box_root_unique recipe5 box5 valid5 _ z hz hu
  norm_num [recipe5]
#print axioms valid5
#print axioms enclosure5
#print axioms unique5

/- Case 6: full unit circle in square -/
def box6 : TargetBox := { reLo := (-1 / 1), reHi := (1 / 1), imLo := (-1 / 1), imHi := (1 / 1) }
def recipe6 : RootRecipe := { cx := (1 / 1), cy := (0 / 1), rx := (2 / 1), ry := (1 / 1), residual := (4 / 1), coarse := (1 / 1), radius := (1 / 1) }
theorem valid6 : recipe6.Valid box6 := by
  norm_num [RootRecipe.Valid, RootRecipe.cubeRe, RootRecipe.cubeIm, recipe6, box6]
theorem enclosure6 (z : ℂ) (hz : box6.Contains z) (hu : Complex.normSq z=1) :
    ∃ w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe6.center) ≤ (recipe6.radius : ℝ)^2 := by
  obtain ⟨w,hw,hwn,hd,_⟩ := phase_box_root_sound recipe6 box6 valid6 z hz hu
  exact ⟨w,hw,hwn,hd⟩
#print axioms valid6
#print axioms enclosure6

/- Case 7: large unphysical corners -/
def box7 : TargetBox := { reLo := (-10 / 1), reHi := (10 / 1), imLo := (-10 / 1), imHi := (10 / 1) }
def recipe7 : RootRecipe := { cx := (1 / 1), cy := (0 / 1), rx := (11 / 1), ry := (10 / 1), residual := (4 / 1), coarse := (1 / 1), radius := (1 / 1) }
theorem valid7 : recipe7.Valid box7 := by
  norm_num [RootRecipe.Valid, RootRecipe.cubeRe, RootRecipe.cubeIm, recipe7, box7]
theorem enclosure7 (z : ℂ) (hz : box7.Contains z) (hu : Complex.normSq z=1) :
    ∃ w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe7.center) ≤ (recipe7.radius : ℝ)^2 := by
  obtain ⟨w,hw,hwn,hd,_⟩ := phase_box_root_sound recipe7 box7 valid7 z hz hu
  exact ⟨w,hw,hwn,hd⟩
#print axioms valid7
#print axioms enclosure7

/- Case 8: exact one -/
def box8 : TargetBox := { reLo := (1 / 1), reHi := (1 / 1), imLo := (0 / 1), imHi := (0 / 1) }
def recipe8 : RootRecipe := { cx := (1 / 1), cy := (0 / 1), rx := (0 / 1), ry := (0 / 1), residual := (0 / 1), coarse := (0 / 1), radius := (0 / 1) }
theorem valid8 : recipe8.Valid box8 := by
  norm_num [RootRecipe.Valid, RootRecipe.cubeRe, RootRecipe.cubeIm, recipe8, box8]
theorem enclosure8 (z : ℂ) (hz : box8.Contains z) (hu : Complex.normSq z=1) :
    ∃ w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe8.center) ≤ (recipe8.radius : ℝ)^2 := by
  obtain ⟨w,hw,hwn,hd,_⟩ := phase_box_root_sound recipe8 box8 valid8 z hz hu
  exact ⟨w,hw,hwn,hd⟩
theorem unique8 (z : ℂ) (hz : box8.Contains z) (hu : Complex.normSq z=1) :
    ∃! w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe8.center) ≤ (recipe8.radius : ℝ)^2 := by
  apply phase_box_root_unique recipe8 box8 valid8 _ z hz hu
  norm_num [recipe8]
#print axioms valid8
#print axioms enclosure8
#print axioms unique8

/- Case 9: nontrivial rational phase -/
def box9 : TargetBox := { reLo := (-14715148877 / 148877000000), reHi := (-14714851123 / 148877000000), imLo := (148147851123 / 148877000000), imHi := (148148148877 / 148877000000) }
def recipe9 : RootRecipe := { cx := (45 / 53), cy := (28 / 53), rx := (1 / 1000000), ry := (1 / 1000000), residual := (1 / 500000000000), coarse := (777473 / 1099511627776), radius := (518315 / 1099511627776) }
theorem valid9 : recipe9.Valid box9 := by
  norm_num [RootRecipe.Valid, RootRecipe.cubeRe, RootRecipe.cubeIm, recipe9, box9]
theorem enclosure9 (z : ℂ) (hz : box9.Contains z) (hu : Complex.normSq z=1) :
    ∃ w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe9.center) ≤ (recipe9.radius : ℝ)^2 := by
  obtain ⟨w,hw,hwn,hd,_⟩ := phase_box_root_sound recipe9 box9 valid9 z hz hu
  exact ⟨w,hw,hwn,hd⟩
theorem unique9 (z : ℂ) (hz : box9.Contains z) (hu : Complex.normSq z=1) :
    ∃! w : ℂ, w^3=z ∧ Complex.normSq w=1 ∧
      Complex.normSq (w-recipe9.center) ≤ (recipe9.radius : ℝ)^2 := by
  apply phase_box_root_unique recipe9 box9 valid9 _ z hz hu
  norm_num [recipe9]
#print axioms valid9
#print axioms enclosure9
#print axioms unique9
end Mub6.PhaseCube.Generated
