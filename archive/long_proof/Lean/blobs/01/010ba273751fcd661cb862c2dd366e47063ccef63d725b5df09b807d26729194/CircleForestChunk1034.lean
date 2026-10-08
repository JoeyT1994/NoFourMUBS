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
def state_1548499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
def hex_1548499 : String := "414042074306050605"
theorem cover_1548499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1548499)
  decide +kernel
#print axioms cover_1548499

def state_1548511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 21)))
def hex_1548511 : String := "44430805434140424408434109050944430841404205080805434140424408094408430809080841090542080840420544050506414042054405090905"
theorem cover_1548511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548511 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1548511)
  decide +kernel
#print axioms cover_1548511

def state_1548573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 42)))
def hex_1548573 : String := "43414042080606064140420744054341400708050542080805"
theorem cover_1548573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1548573)
  decide +kernel
#print axioms cover_1548573

def state_1548603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 86)))
def hex_1548603 : String := "4308414042084408080808"
theorem cover_1548603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1548603)
  decide +kernel
#print axioms cover_1548603

def state_1548615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 87)))
def hex_1548615 : String := "414042440843084140420944080708084408430741400707400A06084042080606"
theorem cover_1548615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548615 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1548615)
  decide +kernel
#print axioms cover_1548615

def state_1548651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 204 else (if j.val < 4 then 81 else 87)))
def hex_1548651 : String := "4443080943410940050809"
theorem cover_1548651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1548651)
  decide +kernel
#print axioms cover_1548651

def state_1548662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 205 else (if j.val < 4 then 81 else 87)))
def hex_1548662 : String := "444341404208080808414042094408090840050843414042440909444307090742094408074042440843080544080A08410940420544050509"
theorem cover_1548662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_1548662)
  decide +kernel
#print axioms cover_1548662

def state_1548719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 120) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 87)))
def hex_1548719 : String := "42094408430809"
theorem cover_1548719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548719 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1548719)
  decide +kernel
#print axioms cover_1548719

def state_1548726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 87)))
def hex_1548726 : String := "404205440843414005060505420808"
theorem cover_1548726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1548726)
  decide +kernel
#print axioms cover_1548726

def state_1548742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 86)))
def hex_1548742 : String := "430641404244084308084408890606"
theorem cover_1548742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1548742)
  decide +kernel
#print axioms cover_1548742
end Mub6.Numerical.CircleFullD0.Forest
