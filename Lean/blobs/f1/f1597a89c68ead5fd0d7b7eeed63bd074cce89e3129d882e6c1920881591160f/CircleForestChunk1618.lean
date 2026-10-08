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
def state_2261501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 54)))
def hex_2261501 : String := "44434241BE444008070641070842410744080507434241060641BE40440606064206410706"
theorem cover_2261501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261501 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_2261501)
  decide +kernel
#print axioms cover_2261501

def state_2261538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 93 else 54)))
def hex_2261538 : String := "41424044434109050505440705404407434107420507050742054044434205080505444342410705070706"
theorem cover_2261538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_2261538)
  decide +kernel
#print axioms cover_2261538

def state_2261581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 55)))
def hex_2261581 : String := "43414206444043BE41060643BE06064205444006060541420544060505"
theorem cover_2261581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261581 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2261581)
  decide +kernel
#print axioms cover_2261581

def state_2261610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 27)))
def hex_2261610 : String := "4443414209074240444341090606064406064044074342060742060707410742060743414206404407060706410606"
theorem cover_2261610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2261610)
  decide +kernel
#print axioms cover_2261610

def state_2261658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 27)))
def hex_2261658 : String := "05"
theorem cover_2261658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261658 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2261658)
  decide +kernel
#print axioms cover_2261658

def state_2261660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 27)))
def hex_2261660 : String := "44434241400506054140440805444342414408060608080640054408050505"
theorem cover_2261660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_2261660)
  decide +kernel
#print axioms cover_2261660

def state_2261691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 27)))
def hex_2261691 : String := "4443424106064140444342410606084206080644434206070706404406050642054140440605060506"
theorem cover_2261691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261691 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_2261691)
  decide +kernel
#print axioms cover_2261691

def state_2261732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 27)))
def hex_2261732 : String := "4142054044434142050705050544434107420507070505"
theorem cover_2261732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261732 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2261732)
  decide +kernel
#print axioms cover_2261732
end Mub6.Numerical.CircleFullD0.Forest
