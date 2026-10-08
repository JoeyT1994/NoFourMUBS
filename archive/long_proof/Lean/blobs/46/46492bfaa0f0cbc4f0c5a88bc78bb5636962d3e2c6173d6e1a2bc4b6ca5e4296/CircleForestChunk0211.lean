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
def state_72011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 21)))
def hex_72011 : String := "4340410909410809404142444309400941090909094244430A400741090507094142444308410640090508064244050509"
theorem cover_72011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_72011)
  decide +kernel
#print axioms cover_72011

def state_72060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
def hex_72060 : String := "4041430844424041080608090707410843084442070907"
theorem cover_72060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72060 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_72060)
  decide +kernel
#print axioms cover_72060

def state_72083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_72083 : String := "43444009060944404142430944400A0609060A410642430A44060906400909"
theorem cover_72083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72083 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_72083)
  decide +kernel
#print axioms cover_72083

def state_72115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
def hex_72115 : String := "4344400A4142050A05074440430A41424440070A060A074341424405050A0541424443054041420505050507440A430A4007414205050542050A07"
theorem cover_72115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_72115)
  decide +kernel
#print axioms cover_72115

def state_72174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_72174 : String := "430A440A40074243070909"
theorem cover_72174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72174 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_72174)
  decide +kernel
#print axioms cover_72174

def state_72187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
def hex_72187 : String := "4344410840420506050844414308404244410608080606434042084405080540424443054140420505050508440643084106404205050542050608"
theorem cover_72187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_72187)
  decide +kernel
#print axioms cover_72187

def state_72246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_72246 : String := "430644064106420806"
theorem cover_72246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_72246)
  decide +kernel
#print axioms cover_72246
end Mub6.Numerical.CircleFullPrototype.Forest
