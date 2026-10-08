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
def state_1616407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 58 else 97)))
def hex_1616407 : String := "43410A44404207070A074144404243440A0744410508070A0A40070A444042434144400742080707440807084307064209430A09400742434107050907"
theorem cover_1616407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1616407)
  decide +kernel
#print axioms cover_1616407

def state_1616468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 115 else (if j.val < 4 then 58 else 97)))
def hex_1616468 : String := "430A410A4440060A07"
theorem cover_1616468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616468 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1616468)
  decide +kernel
#print axioms cover_1616468

def state_1616477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
def hex_1616477 : String := "0A"
theorem cover_1616477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1616477)
  decide +kernel
#print axioms cover_1616477

def state_1616479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
def hex_1616479 : String := "404243EA414440080940420843080609440840080943EA4144400542090540064243EA06064440060940064209064243060943410A4440EA0740EA09410A09"
theorem cover_1616479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1616479)
  decide +kernel
#print axioms cover_1616479

def state_1616544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 114 else (if j.val < 4 then 58 else 97)))
def hex_1616544 : String := "4341444042070742054305410A444005050507444042050705054144404208430706420909400742050744400809400705"
theorem cover_1616544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616544 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1616544)
  decide +kernel
#print axioms cover_1616544

def state_1616593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 115 else (if j.val < 4 then 58 else 97)))
def hex_1616593 : String := "4341444007424307410A4440070A070707444007424305414440070505050707414440064243410A444006090706060744400642434144090709060607"
theorem cover_1616593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616593 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1616593)
  decide +kernel
#print axioms cover_1616593
end Mub6.Numerical.CircleFullD0.Forest
