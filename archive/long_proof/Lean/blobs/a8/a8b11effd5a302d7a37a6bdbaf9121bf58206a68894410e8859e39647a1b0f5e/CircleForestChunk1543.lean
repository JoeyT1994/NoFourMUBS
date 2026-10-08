import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2243897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 32 else 44)))
def hex_2243897 : String := "414442074340E6080707440842074340050707"
theorem cover_2243897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2243897)
  decide +kernel
#print axioms cover_2243897

def state_2243916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 33 else 44)))
def hex_2243916 : String := "40414443420740090707074409054107440807"
theorem cover_2243916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2243916)
  decide +kernel
#print axioms cover_2243916

def state_2243935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 16 else 45)))
def hex_2243935 : String := "420743444005070507"
theorem cover_2243935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243935 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2243935)
  decide +kernel
#print axioms cover_2243935

def state_2243944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 31 else (if j.val < 4 then 16 else 22)))
def hex_2243944 : String := "444208434140050805414005080505"
theorem cover_2243944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2243944)
  decide +kernel
#print axioms cover_2243944

def state_2243959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 16 else 22)))
def hex_2243959 : String := "414442074340410708070707440842074340050707"
theorem cover_2243959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243959 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2243959)
  decide +kernel
#print axioms cover_2243959

def state_2243980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 17 else 22)))
def hex_2243980 : String := "404144434207070707440905410707"
theorem cover_2243980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243980 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2243980)
  decide +kernel
#print axioms cover_2243980

def state_2243995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 23)))
def hex_2243995 : String := "420743444005070507"
theorem cover_2243995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243995 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2243995)
  decide +kernel
#print axioms cover_2243995

def state_2244004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 11)))
def hex_2244004 : String := "444208434140050805414005080505"
theorem cover_2244004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2244004)
  decide +kernel
#print axioms cover_2244004

def state_2244019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 11)))
def hex_2244019 : String := "414442074340410708070707440842074340050707"
theorem cover_2244019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2244019)
  decide +kernel
#print axioms cover_2244019

def state_2244040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 9 else 11)))
def hex_2244040 : String := "404107440905410707"
theorem cover_2244040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244040 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2244040)
  decide +kernel
#print axioms cover_2244040

def state_2244049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
def hex_2244049 : String := "4440090640410A4344090A094107434442400907060707"
theorem cover_2244049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2244049)
  decide +kernel
#print axioms cover_2244049

def state_2244073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2244073 : String := "4142434442440505080844050543084443080505424344050505430A440A05"
theorem cover_2244073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244073 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2244073)
  decide +kernel
#print axioms cover_2244073

def state_2244105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2244105 : String := "4243440740080907430A4407400507"
theorem cover_2244105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_2244105)
  decide +kernel
#print axioms cover_2244105
end Mub6.Numerical.CircleFullD0.Forest
