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
def state_962469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 55)))
def hex_962469 : String := "444305404142050505054305404142444305400A06084443054007054305084244054305400A054405054142440508440508420505"
theorem cover_962469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_962469)
  decide +kernel
#print axioms cover_962469

def state_962522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 55)))
def hex_962522 : String := "44054305404107074142050505"
theorem cover_962522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_962522)
  decide +kernel
#print axioms cover_962522

def state_962535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 91) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
def hex_962535 : String := "42440543054041420505050505"
theorem cover_962535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962535 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_962535)
  decide +kernel
#print axioms cover_962535

def state_962548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
def hex_962548 : String := "41424405430540410805050505"
theorem cover_962548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962548 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_962548)
  decide +kernel
#print axioms cover_962548

def state_962561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 27)))
def hex_962561 : String := "09"
theorem cover_962561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_962561)
  decide +kernel
#print axioms cover_962561

def state_962562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
def hex_962562 : String := "41424409430540410A42440508090A0942440543054041420505050505"
theorem cover_962562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_962562)
  decide +kernel
#print axioms cover_962562

def state_962591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 13)))
def hex_962591 : String := "09"
theorem cover_962591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_962591)
  decide +kernel
#print axioms cover_962591

def state_962592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
def hex_962592 : String := "424405430540414244050505050505"
theorem cover_962592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_962592)
  decide +kernel
#print axioms cover_962592

def state_962611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 26)))
def hex_962611 : String := "43400A41420A44084340084109080A0A0A"
theorem cover_962611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_962611)
  decide +kernel
#print axioms cover_962611

def state_962630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
def hex_962630 : String := "414243440A400641420506070A43440706440A07420A0A"
theorem cover_962630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962630 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_962630)
  decide +kernel
#print axioms cover_962630

def state_962658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
def hex_962658 : String := "41420A0A0A"
theorem cover_962658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962658 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_962658)
  decide +kernel
#print axioms cover_962658

def state_962665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 54)))
def hex_962665 : String := "43440A400A41C70A0A"
theorem cover_962665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962665 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_962665)
  decide +kernel
#print axioms cover_962665

def state_962676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 108)))
def hex_962676 : String := "0A"
theorem cover_962676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962676 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_962676)
  decide +kernel
#print axioms cover_962676

def state_962678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
def hex_962678 : String := "4142C743070A0A"
theorem cover_962678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_962678)
  decide +kernel
#print axioms cover_962678

def state_962686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 176) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
def hex_962686 : String := "42C74344404109090940074142C70742C70744400A41420608094041420707074142C74307444007090742C743070A"
theorem cover_962686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_962686)
  decide +kernel
#print axioms cover_962686
end Mub6.Numerical.CircleFullD0.Forest
