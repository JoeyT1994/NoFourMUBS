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
def state_1507339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 30)))
def hex_1507339 : String := "414206434407060642434440410642054306050606064344074041060706440706"
theorem cover_1507339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1507339)
  decide +kernel
#print axioms cover_1507339

def state_1507372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
def hex_1507372 : String := "404142060A424306064344400A410642060705444008060606"
theorem cover_1507372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1507372)
  decide +kernel
#print axioms cover_1507372

def state_1507398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 7)))
def hex_1507398 : String := "4440424306410A06060805"
theorem cover_1507398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507398 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1507398)
  decide +kernel
#print axioms cover_1507398

def state_1507411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
def hex_1507411 : String := "424143444006070A44070A43440640064241070606440940094241070907410A430607"
theorem cover_1507411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1507411)
  decide +kernel
#print axioms cover_1507411

def state_1507446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
def hex_1507446 : String := "4241434407400707440740070743440740424107070707440740424107070707410707"
theorem cover_1507446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1507446)
  decide +kernel
#print axioms cover_1507446

def state_1507481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 15)))
def hex_1507481 : String := "4042410A430A44400A42410A430A0A0A0A0A424143050A434440424105430507050705444042410A430707074241070707400A42410643070607410A430707"
theorem cover_1507481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1507481)
  decide +kernel
#print axioms cover_1507481

def state_1507550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 14)))
def hex_1507550 : String := "06"
theorem cover_1507550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507550 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1507550)
  decide +kernel
#print axioms cover_1507550

def state_1507553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
def hex_1507553 : String := "06"
theorem cover_1507553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1507553)
  decide +kernel
#print axioms cover_1507553
end Mub6.Numerical.CircleFullD0.Forest
