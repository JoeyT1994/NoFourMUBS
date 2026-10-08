import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1533079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 17)))
def hex_1533079 : String := "44404206410643444006424106070A060A4209410943444042090A094042090A090940064206410643444005050506"
theorem cover_1533079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1533079)
  decide +kernel
#print axioms cover_1533079

def state_1533129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 34)))
def hex_1533129 : String := "4241434408404207050844074007420741430506070741434440094208090544400742074143090707404207094241430544070507410509430907"
theorem cover_1533129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533129 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1533129)
  decide +kernel
#print axioms cover_1533129

def state_1533188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 34)))
def hex_1533188 : String := "420841430844404208414308444042070708404207410507080808404241430544080508410543054408050808"
theorem cover_1533188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 45) (hex := hex_1533188)
  decide +kernel
#print axioms cover_1533188

def state_1533233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 35)))
def hex_1533233 : String := "40424143054406054344080544074006420605410543054440074207090542414305444042080508050841054305444042084105080805"
theorem cover_1533233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533233 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1533233)
  decide +kernel
#print axioms cover_1533233

def state_1533290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 34)))
def hex_1533290 : String := "42074143440740074207070707"
theorem cover_1533290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533290 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1533290)
  decide +kernel
#print axioms cover_1533290

def state_1533304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 53) else (if j.val < 3 then 102 else (if j.val < 4 then 39 else 34)))
def hex_1533304 : String := "4143444007084007080707"
theorem cover_1533304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533304 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1533304)
  decide +kernel
#print axioms cover_1533304
end Mub6.Numerical.CircleFullD0.Forest
