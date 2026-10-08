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
def state_1023322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 251) else (if j.val < 3 then 151 else (if j.val < 4 then 207 else 204)))
def hex_1023322 : String := "40444342090942090943424140440705054044430909430507440905410640070642414044430708080640440A0A440908410640440606064409430606"
theorem cover_1023322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1023322)
  decide +kernel
#print axioms cover_1023322

def state_1023383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 205)))
def hex_1023383 : String := "4342054140070540444307420507074443050505424105400805414044430606070640444342410540070507420841064007064307084443060608"
theorem cover_1023383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1023383)
  decide +kernel
#print axioms cover_1023383

def state_1023442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 103)))
def hex_1023442 : String := "4241054043050805414009084043444209070744420807084344420541054007050508"
theorem cover_1023442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023442 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1023442)
  decide +kernel
#print axioms cover_1023442

def state_1023478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
def hex_1023478 : String := "4344420641400843084408420607084206410940064306064442064140440A0A44434206080A434206070A400644060642064140094309094006430606"
theorem cover_1023478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023478 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1023478)
  decide +kernel
#print axioms cover_1023478
end Mub6.Numerical.CircleFullD0.Forest
