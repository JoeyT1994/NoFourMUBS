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
def state_2574609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 46 else 19)))
def hex_2574609 : String := "40064441420543054044410A420543054006050605420643064006054142064306400644050506"
theorem cover_2574609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574609 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_2574609)
  decide +kernel
#print axioms cover_2574609

def state_2574649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 19)))
def hex_2574649 : String := "44414209434006440A0609420643064006444109060606"
theorem cover_2574649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574649 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2574649)
  decide +kernel
#print axioms cover_2574649

def state_2574674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 38)))
def hex_2574674 : String := "4243400A050A434044410A420A43400A0A0A410A420643060A44410A420543050A410A420543050A400A0A"
theorem cover_2574674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2574674)
  decide +kernel
#print axioms cover_2574674

def state_2574718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 94 else (if j.val < 4 then 47 else 38)))
def hex_2574718 : String := "4340060540444109060644410A4305420540440A0605410A06"
theorem cover_2574718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574718 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2574718)
  decide +kernel
#print axioms cover_2574718

def state_2574744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 94 else 38)))
def hex_2574744 : String := "40444142064306400644410A0606060644414205430540440541050505420543054044410505060541420543054044410505060506"
theorem cover_2574744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_2574744)
  decide +kernel
#print axioms cover_2574744

def state_2574798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 95 else 38)))
def hex_2574798 : String := "4441420A434009440A0A094243064006DC434006DC4009DC4142094340064409060906"
theorem cover_2574798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574798 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2574798)
  decide +kernel
#print axioms cover_2574798

def state_2574833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 95 else 38)))
def hex_2574833 : String := "44414243400A050A4340440A0A4405050ADC41420A4340440A07440A070ADC"
theorem cover_2574833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574833 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2574833)
  decide +kernel
#print axioms cover_2574833
end Mub6.Numerical.CircleFullD0.Forest
