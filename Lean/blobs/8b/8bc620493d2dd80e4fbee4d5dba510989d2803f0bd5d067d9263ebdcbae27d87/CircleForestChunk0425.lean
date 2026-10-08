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
def state_177529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 6)))
def hex_177529 : String := "444043060743064244050705404342070607434208084207410807"
theorem cover_177529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177529 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_177529)
  decide +kernel
#print axioms cover_177529

def state_177558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 7)))
def hex_177558 : String := "400543444105090505"
theorem cover_177558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_177558)
  decide +kernel
#print axioms cover_177558

def state_177569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 7)))
def hex_177569 : String := "444142054344404105064142050606400A41050A4440410542054406054105420544060505420A430A44400742084144060A060A0A"
theorem cover_177569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177569 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_177569)
  decide +kernel
#print axioms cover_177569

def state_177622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 7)))
def hex_177622 : String := "444105420544070A41050A"
theorem cover_177622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177622 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_177622)
  decide +kernel
#print axioms cover_177622

def state_177635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 14)))
def hex_177635 : String := "414240050840434441080841054205430940050844410508054344080944084105084240430808084043440609440842090A430808"
theorem cover_177635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177635 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_177635)
  decide +kernel
#print axioms cover_177635

def state_177688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 15)))
def hex_177688 : String := "41420540430A0543090509"
theorem cover_177688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177688 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_177688)
  decide +kernel
#print axioms cover_177688

def state_177699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 7)))
def hex_177699 : String := "44414205404443080505440805424044080508404443080743420A414005050707440843080841054205400A430906"
theorem cover_177699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_177699)
  decide +kernel
#print axioms cover_177699

def state_177746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_177746 : String := "420A40430A0A4344420941400A0808094442414007080741400708070A"
theorem cover_177746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_177746)
  decide +kernel
#print axioms cover_177746
end Mub6.Numerical.CircleFullPrototype.Forest
