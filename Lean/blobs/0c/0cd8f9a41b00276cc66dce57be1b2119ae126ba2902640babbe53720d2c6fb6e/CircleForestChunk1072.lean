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
def state_1557718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 42 else 43)))
def hex_1557718 : String := "44434140070705054341404206440706094005420544050909"
theorem cover_1557718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557718 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1557718)
  decide +kernel
#print axioms cover_1557718

def state_1557744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 42 else 86)))
def hex_1557744 : String := "4341404207440743410A0707420A0A0707"
theorem cover_1557744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1557744)
  decide +kernel
#print axioms cover_1557744

def state_1557763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 87)))
def hex_1557763 : String := "4044420A43410A40070A0A4243890643410840080A0644420A0A42090A"
theorem cover_1557763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1557763)
  decide +kernel
#print axioms cover_1557763

def state_1557792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 87)))
def hex_1557792 : String := "40440742438905434140440708440A420A0A400544054205070744420A43410A07074243890943410A4044070A0A0A"
theorem cover_1557792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1557792)
  decide +kernel
#print axioms cover_1557792

def state_1557839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 85 else 87)))
def hex_1557839 : String := "410A400507"
theorem cover_1557839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557839 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1557839)
  decide +kernel
#print axioms cover_1557839

def state_1557844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 43)))
def hex_1557844 : String := "42444341090A07094443410A40420706060A434140440A09094044420A0A42090A44060909"
theorem cover_1557844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1557844)
  decide +kernel
#print axioms cover_1557844

def state_1557881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 43)))
def hex_1557881 : String := "4042054405434140054405050505420544054341404405420506060505"
theorem cover_1557881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1557881)
  decide +kernel
#print axioms cover_1557881

def state_1557910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 43 else 21)))
def hex_1557910 : String := "44054140070905"
theorem cover_1557910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1557910)
  decide +kernel
#print axioms cover_1557910

def state_1557919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 42)))
def hex_1557919 : String := "414042434407414007420706070743440641400906060742430644060A06400706"
theorem cover_1557919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1557919)
  decide +kernel
#print axioms cover_1557919
end Mub6.Numerical.CircleFullD0.Forest
