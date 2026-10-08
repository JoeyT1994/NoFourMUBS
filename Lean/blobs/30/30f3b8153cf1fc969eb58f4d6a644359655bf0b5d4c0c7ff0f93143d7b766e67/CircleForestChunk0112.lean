import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_48073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_48073 : String := "4440424107430507410A09074009420809"
theorem cover_48073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48073 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_48073)
  decide +kernel
#print axioms cover_48073

def state_48091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_48091 : String := "07"
theorem cover_48091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48091 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_48091)
  decide +kernel
#print axioms cover_48091

def state_48095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 5)))
def hex_48095 : String := "08"
theorem cover_48095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_48095)
  decide +kernel
#print axioms cover_48095

def state_48098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
def hex_48098 : String := "43084042080606"
theorem cover_48098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_48098)
  decide +kernel
#print axioms cover_48098

def state_48106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 10)))
def hex_48106 : String := "404244070844070807"
theorem cover_48106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48106 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_48106)
  decide +kernel
#print axioms cover_48106

def state_48117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 10)))
def hex_48117 : String := "444107434107054140420507050541084308444108404205430844410805080508"
theorem cover_48117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48117 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_48117)
  decide +kernel
#print axioms cover_48117

def state_48150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 10)))
def hex_48150 : String := "44410643074241074044054307424106050605074106430842444106090806"
theorem cover_48150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48150 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_48150)
  decide +kernel
#print axioms cover_48150

def state_48181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 10)))
def hex_48181 : String := "42440708440706"
theorem cover_48181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_48181)
  decide +kernel
#print axioms cover_48181

def state_48188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
def hex_48188 : String := "4108430844404208080808"
theorem cover_48188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_48188)
  decide +kernel
#print axioms cover_48188

def state_48199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_48199 : String := "43084441064243094044410643070606060908"
theorem cover_48199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_48199)
  decide +kernel
#print axioms cover_48199

def state_48218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_48218 : String := "424308440708430806"
theorem cover_48218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_48218)
  decide +kernel
#print axioms cover_48218

def state_48231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 4)))
def hex_48231 : String := "41420543054405400505424344060606430A0A"
theorem cover_48231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_48231)
  decide +kernel
#print axioms cover_48231

def state_48251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 4)))
def hex_48251 : String := "420843440708440708"
theorem cover_48251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48251 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_48251)
  decide +kernel
#print axioms cover_48251

def state_48261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 4 else 4)))
def hex_48261 : String := "4344404142060A0A410842080A40410806084440414306060641074342060A420607400608"
theorem cover_48261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48261 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_48261)
  decide +kernel
#print axioms cover_48261
end Mub6.Numerical.CircleFullPrototype.Forest
