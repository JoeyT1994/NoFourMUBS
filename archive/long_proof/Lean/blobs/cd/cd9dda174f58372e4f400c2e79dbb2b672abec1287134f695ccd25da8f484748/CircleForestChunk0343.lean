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
def state_157715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 31)))
def hex_157715 : String := "40414205430505424305054344404142050606074006054440414205060641054205430644080540060541054205430544404105070505"
theorem cover_157715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157715 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_157715)
  decide +kernel
#print axioms cover_157715

def state_157773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 30)))
def hex_157773 : String := "4243094440414282094282090940410842430A080A4108424309080909"
theorem cover_157773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157773 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_157773)
  decide +kernel
#print axioms cover_157773

def state_157802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 30)))
def hex_157802 : String := "42430944404142820942820509404142430644400608060606414243094409080942430944094006090943094409400609"
theorem cover_157802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_157802)
  decide +kernel
#print axioms cover_157802

def state_157851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 30)))
def hex_157851 : String := "09"
theorem cover_157851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157851 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_157851)
  decide +kernel
#print axioms cover_157851

def state_157852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 31)))
def hex_157852 : String := "404142430A080A42430A4440064142080606060641424305050942430744404108420709090809"
theorem cover_157852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157852 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_157852)
  decide +kernel
#print axioms cover_157852

def state_157893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 30)))
def hex_157893 : String := "4042414307440A4042074143070907070741430744404241820741820542074143070A0740424143060A060607430744070707"
theorem cover_157893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157893 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_157893)
  decide +kernel
#print axioms cover_157893

def state_157944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 31)))
def hex_157944 : String := "40424143074407070741430744400607060607"
theorem cover_157944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_157944)
  decide +kernel
#print axioms cover_157944
end Mub6.Numerical.CircleFullPrototype.Forest
