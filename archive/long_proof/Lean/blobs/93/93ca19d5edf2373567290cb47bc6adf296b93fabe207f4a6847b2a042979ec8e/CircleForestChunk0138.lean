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
def state_54412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
def hex_54412 : String := "41420905424344410907080943440505440505"
theorem cover_54412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54412 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_54412)
  decide +kernel
#print axioms cover_54412

def state_54432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
def hex_54432 : String := "424344400909090943440505440505"
theorem cover_54432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_54432)
  decide +kernel
#print axioms cover_54432

def state_54451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 26)))
def hex_54451 : String := "4142094344400509090942094344074140074209434407410507070707"
theorem cover_54451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_54451)
  decide +kernel
#print axioms cover_54451

def state_54480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 26)))
def hex_54480 : String := "4142094344084041094209434408400508090809420A43440A4041420A434440070840414209050741420A43080A420A43440791070A4207070A0A"
theorem cover_54480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 59) (hex := hex_54480)
  decide +kernel
#print axioms cover_54480

def state_54540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 27)))
def hex_54540 : String := "41094209434140084442094341094008444207050809080808"
theorem cover_54540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 25) (hex := hex_54540)
  decide +kernel
#print axioms cover_54540

def state_54566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 27)))
def hex_54566 : String := "4209434041094442094340094109444209054209050942094340060609414442094307090744420A4340414408064408420906080A4209430740060609"
theorem cover_54566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54566 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_54566)
  decide +kernel
#print axioms cover_54566

def state_54628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 16 else (if j.val < 4 then 24 else 27)))
def hex_54628 : String := "4340410944420643400605090841440A4209434109050944050509"
theorem cover_54628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_54628)
  decide +kernel
#print axioms cover_54628
end Mub6.Numerical.CircleFullPrototype.Forest
