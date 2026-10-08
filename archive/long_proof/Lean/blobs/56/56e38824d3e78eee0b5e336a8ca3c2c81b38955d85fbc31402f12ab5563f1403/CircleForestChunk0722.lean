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
def state_1474217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 36 else (if j.val < 4 then 47 else 59)))
def hex_1474217 : String := "404341070707434142090A4244070744404305054341050541070705410707"
theorem cover_1474217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474217 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1474217)
  decide +kernel
#print axioms cover_1474217

def state_1474248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 37 else (if j.val < 4 then 47 else 29)))
def hex_1474248 : String := "44400643060640430541050543410A420505414244430A07050542444306070505"
theorem cover_1474248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474248 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1474248)
  decide +kernel
#print axioms cover_1474248

def state_1474282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 46 else 29)))
def hex_1474282 : String := "4109424440430841090808404341094209084109420944080509440840430841080808"
theorem cover_1474282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474282 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1474282)
  decide +kernel
#print axioms cover_1474282

def state_1474318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 29)))
def hex_1474318 : String := "09"
theorem cover_1474318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1474318)
  decide +kernel
#print axioms cover_1474318

def state_1474320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 36 else (if j.val < 4 then 47 else 29)))
def hex_1474320 : String := "444340410944084209080940410944420A43080A42074340410707084007090909"
theorem cover_1474320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474320 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1474320)
  decide +kernel
#print axioms cover_1474320

def state_1474353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 37 else (if j.val < 4 then 47 else 29)))
def hex_1474353 : String := "4443084041420908080843404109424408050809404109424443404109080840410707090944080509"
theorem cover_1474353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1474353)
  decide +kernel
#print axioms cover_1474353

def state_1474394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 14)))
def hex_1474394 : String := "4440060840430A410A4244060A0643410808414244080908424408430840410A080808"
theorem cover_1474394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1474394)
  decide +kernel
#print axioms cover_1474394

def state_1474429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 14)))
def hex_1474429 : String := "434142090842440840430708070841094244430840410808080908"
theorem cover_1474429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1474429)
  decide +kernel
#print axioms cover_1474429
end Mub6.Numerical.CircleFullD0.Forest
