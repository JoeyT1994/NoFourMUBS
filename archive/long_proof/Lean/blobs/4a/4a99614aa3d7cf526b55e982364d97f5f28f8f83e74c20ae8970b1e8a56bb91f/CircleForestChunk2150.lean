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
def state_2596653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
def hex_2596653 : String := "4344434041424405050542440505054109094005414244050505424405430905054344404105050940050944400541050505440505"
theorem cover_2596653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_2596653)
  decide +kernel
#print axioms cover_2596653

def state_2596708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 5)))
def hex_2596708 : String := "4441424340060A40440A06440A0843400A0A40440505440A0A42430640060A0A4142064306444005070606"
theorem cover_2596708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 43) (hex := hex_2596708)
  decide +kernel
#print axioms cover_2596708

def state_2596751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 5)))
def hex_2596751 : String := "4441424043440505050840054344050505424005080541420705420605"
theorem cover_2596751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2596751)
  decide +kernel
#print axioms cover_2596751

def state_2596780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
def hex_2596780 : String := "43444143400A094005420A050A4143440A060543060505"
theorem cover_2596780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596780 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2596780)
  decide +kernel
#print axioms cover_2596780

def state_2596803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_2596803 : String := "440540410542050541424405050505"
theorem cover_2596803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2596803)
  decide +kernel
#print axioms cover_2596803

def state_2596818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_2596818 : String := "434405404105430505414344050505054405400505"
theorem cover_2596818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596818 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2596818)
  decide +kernel
#print axioms cover_2596818

def state_2596843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_2596843 : String := "42434041064406420606060606"
theorem cover_2596843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596843 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2596843)
  decide +kernel
#print axioms cover_2596843

def state_2596859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 10)))
def hex_2596859 : String := "4041420806424344080808434406404108090844060808"
theorem cover_2596859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596859 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2596859)
  decide +kernel
#print axioms cover_2596859
end Mub6.Numerical.CircleFullD0.Forest
