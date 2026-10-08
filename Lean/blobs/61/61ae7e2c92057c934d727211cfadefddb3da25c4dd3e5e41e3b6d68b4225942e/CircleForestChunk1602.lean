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
def state_2257704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 55)))
def hex_2257704 : String := "40434142054440054341420544400543414205440905050505050505050543414205444043BE0543BE414205440A0505060505"
theorem cover_2257704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257704 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 51) (hex := hex_2257704)
  decide +kernel
#print axioms cover_2257704

def state_2257755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 53) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
def hex_2257755 : String := "420544400543420541440805050505"
theorem cover_2257755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257755 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2257755)
  decide +kernel
#print axioms cover_2257755

def state_2257770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 27)))
def hex_2257770 : String := "41420544050505"
theorem cover_2257770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257770 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2257770)
  decide +kernel
#print axioms cover_2257770

def state_2257777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
def hex_2257777 : String := "4205440805"
theorem cover_2257777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2257777)
  decide +kernel
#print axioms cover_2257777

def state_2257787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 26)))
def hex_2257787 : String := "434144400A0A4042070A090A41444042094341440A090A41444042090A09090A42094341090A41090A404206434109070909440A400706"
theorem cover_2257787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_2257787)
  decide +kernel
#print axioms cover_2257787

def state_2257842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 26)))
def hex_2257842 : String := "4341090A4109440A06"
theorem cover_2257842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2257842)
  decide +kernel
#print axioms cover_2257842

def state_2257851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 27)))
def hex_2257851 : String := "40434108074140080606430909"
theorem cover_2257851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257851 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2257851)
  decide +kernel
#print axioms cover_2257851

def state_2257867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 26)))
def hex_2257867 : String := "41424440430541050A05404341050A41420A4405400A050A43410505414209050A44054043054105050542440A0A44400A05400A43050A"
theorem cover_2257867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257867 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2257867)
  decide +kernel
#print axioms cover_2257867

def state_2257927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 90 else 52)))
def hex_2257927 : String := "4144420A05420A05440A0A"
theorem cover_2257927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257927 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2257927)
  decide +kernel
#print axioms cover_2257927
end Mub6.Numerical.CircleFullD0.Forest
