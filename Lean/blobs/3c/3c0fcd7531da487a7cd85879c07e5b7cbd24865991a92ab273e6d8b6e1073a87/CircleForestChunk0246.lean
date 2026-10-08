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
def state_134415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 13)))
def hex_134415 : String := "4440414208434408400941050908084142054344050544050508404142094307444009050909414205430A050A"
theorem cover_134415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_134415)
  decide +kernel
#print axioms cover_134415

def state_134460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 13)))
def hex_134460 : String := "44084041420543444008050606420843090641420543050542084344080908"
theorem cover_134460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_134460)
  decide +kernel
#print axioms cover_134460

def state_134491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
def hex_134491 : String := "4208434408094408400808"
theorem cover_134491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134491 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_134491)
  decide +kernel
#print axioms cover_134491

def state_134504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 12)))
def hex_134504 : String := "404142430644064041424306440640070643050A4243050805410606430544054240050605424305440541400506050541420606420606"
theorem cover_134504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134504 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_134504)
  decide +kernel
#print axioms cover_134504

def state_134560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 13)))
def hex_134560 : String := "41424307444041070941074209070707420905"
theorem cover_134560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_134560)
  decide +kernel
#print axioms cover_134560

def state_134579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 13)))
def hex_134579 : String := "414243074440410742430644060907410706070742430A4440414209430644050909410606094307444005064005410705"
theorem cover_134579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134579 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_134579)
  decide +kernel
#print axioms cover_134579

def state_134630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
def hex_134630 : String := "414244084340410A084142080A08080A420805"
theorem cover_134630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134630 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_134630)
  decide +kernel
#print axioms cover_134630
end Mub6.Numerical.CircleFullPrototype.Forest
