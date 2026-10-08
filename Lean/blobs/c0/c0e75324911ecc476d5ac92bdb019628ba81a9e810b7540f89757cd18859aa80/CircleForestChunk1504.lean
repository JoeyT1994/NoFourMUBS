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
def state_1661645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
def hex_1661645 : String := "444041430744424144400743054241070507074440070505070505414305444240414443054205414408050505050540414408050508050505"
theorem cover_1661645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661645 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 57) (hex := hex_1661645)
  decide +kernel
#print axioms cover_1661645

def state_1661708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
def hex_1661708 : String := "414440074243414440074243050A430741444007EA070A070A41440A4007420A070A43410744400743070A07414406070A07440A400705"
theorem cover_1661708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 55) (hex := hex_1661708)
  decide +kernel
#print axioms cover_1661708

def state_1661763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
def hex_1661763 : String := "41444006420A06070A"
theorem cover_1661763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1661763)
  decide +kernel
#print axioms cover_1661763

def state_1661772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 12)))
def hex_1661772 : String := "434144400643070607440A0741060A"
theorem cover_1661772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1661772)
  decide +kernel
#print axioms cover_1661772

def state_1661787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 13)))
def hex_1661787 : String := "07"
theorem cover_1661787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1661787)
  decide +kernel
#print axioms cover_1661787

def state_1661788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_1661788 : String := "440A420507"
theorem cover_1661788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661788 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1661788)
  decide +kernel
#print axioms cover_1661788

def state_1661802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
def hex_1661802 : String := "41444042054305414440EA060505050505"
theorem cover_1661802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1661802)
  decide +kernel
#print axioms cover_1661802

def state_1661823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 48)))
def hex_1661823 : String := "434144400805050509"
theorem cover_1661823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1661823)
  decide +kernel
#print axioms cover_1661823

def state_1661834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
def hex_1661834 : String := "44404243EA0843EA41444006094006090A42094341440940EA0509094042430541440A0505434144400705050541444006420906070A4205430509"
theorem cover_1661834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1661834)
  decide +kernel
#print axioms cover_1661834

def state_1661893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
def hex_1661893 : String := "44400A09400505"
theorem cover_1661893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661893 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1661893)
  decide +kernel
#print axioms cover_1661893

def state_1661900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 48)))
def hex_1661900 : String := "41440940420906090A"
theorem cover_1661900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661900 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1661900)
  decide +kernel
#print axioms cover_1661900

def state_1661909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_1661909 : String := "42094341090509"
theorem cover_1661909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1661909)
  decide +kernel
#print axioms cover_1661909
end Mub6.Numerical.CircleFullD0.Forest
