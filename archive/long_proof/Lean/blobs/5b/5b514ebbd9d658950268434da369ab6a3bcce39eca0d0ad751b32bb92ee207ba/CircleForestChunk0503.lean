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
def state_282202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 95)))
def hex_282202 : String := "4143424408400A414305090A080A0A"
theorem cover_282202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282202 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_282202)
  decide +kernel
#print axioms cover_282202

def state_282217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 95)))
def hex_282217 : String := "4143424440080740414308094308420A084107430842D507074244074041090A410743420A0705074342440840080808420A0A"
theorem cover_282217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282217 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_282217)
  decide +kernel
#print axioms cover_282217

def state_282268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 37 else (if j.val < 4 then 57 else 47)))
def hex_282268 : String := "44074008410708"
theorem cover_282268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282268 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_282268)
  decide +kernel
#print axioms cover_282268

def state_282275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 23)))
def hex_282275 : String := "44400A074041090A41424344070907074243440A400A4143420A07090A0A0A"
theorem cover_282275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282275 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_282275)
  decide +kernel
#print axioms cover_282275

def state_282306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 23)))
def hex_282306 : String := "434407400807440709"
theorem cover_282306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_282306)
  decide +kernel
#print axioms cover_282306

def state_282315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
def hex_282315 : String := "4243444008084043080A43084142440A400A43080A080A0A43080A"
theorem cover_282315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_282315)
  decide +kernel
#print axioms cover_282315

def state_282343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
def hex_282343 : String := "410705"
theorem cover_282343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282343 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_282343)
  decide +kernel
#print axioms cover_282343

def state_282347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
def hex_282347 : String := "4243404407410743424407404106060606424405404107434205060505070740440541074205070507"
theorem cover_282347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282347 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 41) (hex := hex_282347)
  decide +kernel
#print axioms cover_282347

def state_282388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
def hex_282388 : String := "42434044054341080841420544054008050505054340080640440542050705"
theorem cover_282388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_282388)
  decide +kernel
#print axioms cover_282388

def state_282419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
def hex_282419 : String := "40440A41420A090A440541424340440541070505050705"
theorem cover_282419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_282419)
  decide +kernel
#print axioms cover_282419
end Mub6.Numerical.CircleFullPrototype.Forest
