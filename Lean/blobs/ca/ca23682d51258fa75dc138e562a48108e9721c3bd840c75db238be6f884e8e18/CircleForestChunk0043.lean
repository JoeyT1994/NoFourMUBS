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
def state_10211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 36)))
def hex_10211 : String := "404143444209400909094442084008434144080808080909414309444206404341440606084106084309060909"
theorem cover_10211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10211 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_10211)
  decide +kernel
#print axioms cover_10211

def state_10257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 55) else (if j.val < 3 then 55 else (if j.val < 4 then 36 else 36)))
def hex_10257 : String := "414243444041424307080708414243090A0A0909440A400743070843070A42430908430608"
theorem cover_10257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10257 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_10257)
  decide +kernel
#print axioms cover_10257

def state_10294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 55) else (if j.val < 3 then 55 else (if j.val < 4 then 36 else 36)))
def hex_10294 : String := "4142434440414243090A0A09414243050A050509440A4043090A43090A0A4209434405090A"
theorem cover_10294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10294 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_10294)
  decide +kernel
#print axioms cover_10294

def state_10331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 37)))
def hex_10331 : String := "41424044430605050640444243070507074442434106090607420607420940444107070709"
theorem cover_10331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_10331)
  decide +kernel
#print axioms cover_10331

def state_10369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 37 else 36)))
def hex_10369 : String := "4142404344060505060A42404341440805080843414442060A06084106084043410A08080A"
theorem cover_10369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10369 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_10369)
  decide +kernel
#print axioms cover_10369

def state_10406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 37 else 37)))
def hex_10406 : String := "41420540050A4240050940434441070707084344410A0809440A410507"
theorem cover_10406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10406 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_10406)
  decide +kernel
#print axioms cover_10406

def state_10435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 19)))
def hex_10435 : String := "404443410509050544434142050709410509430905"
theorem cover_10435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10435 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_10435)
  decide +kernel
#print axioms cover_10435
end Mub6.Numerical.CircleFullPrototype.Forest
