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
def state_974199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
def hex_974199 : String := "4143420506094342444005410505054440074144424306050606444243060507070642054440094109434442054009410509050505"
theorem cover_974199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_974199)
  decide +kernel
#print axioms cover_974199

def state_974253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
def hex_974253 : String := "434205444044420506050A0505"
theorem cover_974253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974253 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_974253)
  decide +kernel
#print axioms cover_974253

def state_974268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 14)))
def hex_974268 : String := "444041054205444305050541054205444340410542050A0A050505"
theorem cover_974268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974268 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_974268)
  decide +kernel
#print axioms cover_974268

def state_974298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
def hex_974298 : String := "44424340060A054306400641054442050605420506"
theorem cover_974298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_974298)
  decide +kernel
#print axioms cover_974298

def state_974321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 56)))
def hex_974321 : String := "434041440605074144420A0A0A44424340070A0543074007410A09420507400505"
theorem cover_974321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974321 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_974321)
  decide +kernel
#print axioms cover_974321

def state_974355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 56)))
def hex_974355 : String := "400641064443060706"
theorem cover_974355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974355 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_974355)
  decide +kernel
#print axioms cover_974355

def state_974365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 56)))
def hex_974365 : String := "414442430605060644424307050707"
theorem cover_974365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_974365)
  decide +kernel
#print axioms cover_974365

def state_974381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 86) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 56)))
def hex_974381 : String := "44424340060A0543064008084205430605"
theorem cover_974381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974381 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_974381)
  decide +kernel
#print axioms cover_974381

def state_974398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 87) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 56)))
def hex_974398 : String := "4442434041440805074144420508054409420507054340064144090607404108440807410844084307054205430605"
theorem cover_974398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974398 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_974398)
  decide +kernel
#print axioms cover_974398

def state_974445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 57)))
def hex_974445 : String := "4205430605"
theorem cover_974445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_974445)
  decide +kernel
#print axioms cover_974445

def state_974451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 42) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
def hex_974451 : String := "0A"
theorem cover_974451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_974451)
  decide +kernel
#print axioms cover_974451
end Mub6.Numerical.CircleFullD0.Forest
