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
def state_2593008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 5)))
def hex_2593008 : String := "4309444041090909404143094442404143090609090942400709070909"
theorem cover_2593008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593008 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_2593008)
  decide +kernel
#print axioms cover_2593008

def state_2593037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_2593037 : String := "434409094409430944090A"
theorem cover_2593037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593037 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2593037)
  decide +kernel
#print axioms cover_2593037

def state_2593048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_2593048 : String := "42430944410942430740440941090A0909414243094409090942430944400A090909430A09"
theorem cover_2593048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593048 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_2593048)
  decide +kernel
#print axioms cover_2593048

def state_2593087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2593087 : String := "4243440605444042430644060505424344060644414243060743440605054206064105064344060544410543060505054344050505"
theorem cover_2593087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593087 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_2593087)
  decide +kernel
#print axioms cover_2593087

def state_2593140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2593140 : String := "42434406054440064142064306440605064041050641420805054305444006414305050506"
theorem cover_2593140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593140 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2593140)
  decide +kernel
#print axioms cover_2593140

def state_2593180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
def hex_2593180 : String := "4442080A08"
theorem cover_2593180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593180 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2593180)
  decide +kernel
#print axioms cover_2593180

def state_2593188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 6)))
def hex_2593188 : String := "4440414209440906060908"
theorem cover_2593188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2593188)
  decide +kernel
#print axioms cover_2593188

def state_2593199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 6)))
def hex_2593199 : String := "44404142434409080743444009094007094407074209430944070741420943094409090940414208430805424306074308074142430807430844090509"
theorem cover_2593199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_2593199)
  decide +kernel
#print axioms cover_2593199
end Mub6.Numerical.CircleFullD0.Forest
