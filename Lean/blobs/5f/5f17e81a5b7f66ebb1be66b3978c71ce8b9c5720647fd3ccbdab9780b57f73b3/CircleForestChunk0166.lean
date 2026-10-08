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
def state_61213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 77) else (if j.val < 3 then 54 else (if j.val < 4 then 96 else 36)))
def hex_61213 : String := "444243404105420A4492054142064492054206449209400506434041054492074144920844920940410544070541440A05449242050542430905430805"
theorem cover_61213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_61213)
  decide +kernel
#print axioms cover_61213

def state_61274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 97 else 36)))
def hex_61274 : String := "40054105444206434005410544420505050505"
theorem cover_61274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61274 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_61274)
  decide +kernel
#print axioms cover_61274

def state_61293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 55 else (if j.val < 4 then 48 else 36)))
def hex_61293 : String := "43400741084244430707070740070A"
theorem cover_61293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61293 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_61293)
  decide +kernel
#print axioms cover_61293

def state_61308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 37)))
def hex_61308 : String := "420507"
theorem cover_61308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_61308)
  decide +kernel
#print axioms cover_61308

def state_61315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 39) else (if j.val < 3 then 54 else (if j.val < 4 then 96 else 36)))
def hex_61315 : String := "4144420A430707420A07444208070A"
theorem cover_61315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_61315)
  decide +kernel
#print axioms cover_61315

def state_61331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 78) else (if j.val < 3 then 54 else (if j.val < 4 then 96 else 36)))
def hex_61331 : String := "444243400A0940414208440805084142064406060843404144920707414492090940410707414492424307070744924207074243094041050909430707"
theorem cover_61331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_61331)
  decide +kernel
#print axioms cover_61331

def state_61392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 79) else (if j.val < 3 then 54 else (if j.val < 4 then 96 else 36)))
def hex_61392 : String := "444208430940410707414408070809"
theorem cover_61392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_61392)
  decide +kernel
#print axioms cover_61392

def state_61407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 54 else (if j.val < 4 then 97 else 36)))
def hex_61407 : String := "4041444208074205054408420707414442084340410707414442060707080842434005060543070744084208430707"
theorem cover_61407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_61407)
  decide +kernel
#print axioms cover_61407
end Mub6.Numerical.CircleFullPrototype.Forest
