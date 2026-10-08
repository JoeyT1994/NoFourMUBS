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
def state_182458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 60 else 61)))
def hex_182458 : String := "420A41400A430A060A"
theorem cover_182458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_182458)
  decide +kernel
#print axioms cover_182458

def state_182467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 61 else 30)))
def hex_182467 : String := "4442410507414044434205070605444342054105070606400744070706"
theorem cover_182467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_182467)
  decide +kernel
#print axioms cover_182467

def state_182497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 60 else 30)))
def hex_182497 : String := "4442094140434442089609444208964206964309440806404309444208960909420941404309060909"
theorem cover_182497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_182497)
  decide +kernel
#print axioms cover_182497

def state_182538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 61 else 30)))
def hex_182538 : String := "4442410608414044434206410608060644080640444308074342064106070644080606"
theorem cover_182538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_182538)
  decide +kernel
#print axioms cover_182538

def state_182573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 30)))
def hex_182573 : String := "40430A44070743094442094140074408090709"
theorem cover_182573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_182573)
  decide +kernel
#print axioms cover_182573

def state_182592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 30 else 31)))
def hex_182592 : String := "4209414006060A"
theorem cover_182592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_182592)
  decide +kernel
#print axioms cover_182592

def state_182599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 31 else 15)))
def hex_182599 : String := "4442410540060641400606400744070606"
theorem cover_182599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182599 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_182599)
  decide +kernel
#print axioms cover_182599

def state_182620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 30)))
def hex_182620 : String := "4240434441090708094344414240430A09434441424009430A09090A0A440941080709420A400743050741420A080A4441090741420608074008430809"
theorem cover_182620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182620 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 61) (hex := hex_182620)
  decide +kernel
#print axioms cover_182620

def state_182681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 30)))
def hex_182681 : String := "424007430A0705"
theorem cover_182681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_182681)
  decide +kernel
#print axioms cover_182681

def state_182688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 31)))
def hex_182688 : String := "41420A080A"
theorem cover_182688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182688 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_182688)
  decide +kernel
#print axioms cover_182688

def state_182693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 15)))
def hex_182693 : String := "444109074106420607"
theorem cover_182693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182693 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_182693)
  decide +kernel
#print axioms cover_182693
end Mub6.Numerical.CircleFullPrototype.Forest
