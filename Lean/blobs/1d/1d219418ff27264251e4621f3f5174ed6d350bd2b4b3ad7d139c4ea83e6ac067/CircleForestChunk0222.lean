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
def state_74666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 49 else 21)))
def hex_74666 : String := "404144420A4340410A070A0A0707410A444207434007410A0540070A07"
theorem cover_74666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74666 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_74666)
  decide +kernel
#print axioms cover_74666

def state_74701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 40)))
def hex_74701 : String := "4340080608"
theorem cover_74701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74701 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_74701)
  decide +kernel
#print axioms cover_74701

def state_74707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 96 else 41)))
def hex_74707 : String := "404142444306064340410909410642B806404142B80642B8080606424408430A40084142B806080A410642440643404106050540410642B8060606"
theorem cover_74707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_74707)
  decide +kernel
#print axioms cover_74707

def state_74766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 97 else 41)))
def hex_74766 : String := "40414244084340080608060841064244064340410608060606"
theorem cover_74766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_74766)
  decide +kernel
#print axioms cover_74766

def state_74791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 43 else (if j.val < 4 then 48 else 20)))
def hex_74791 : String := "06"
theorem cover_74791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74791 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_74791)
  decide +kernel
#print axioms cover_74791

def state_74792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 20)))
def hex_74792 : String := "42440843400A41424405050605400841424408434008050806080A"
theorem cover_74792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_74792)
  decide +kernel
#print axioms cover_74792

def state_74819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 20)))
def hex_74819 : String := "41064244064305404106050506"
theorem cover_74819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74819 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_74819)
  decide +kernel
#print axioms cover_74819

def state_74832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 49 else 20)))
def hex_74832 : String := "4041424408434008410608080608410642440643404106080640080606"
theorem cover_74832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74832 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_74832)
  decide +kernel
#print axioms cover_74832

def state_74867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 96 else 42)))
def hex_74867 : String := "4041424443094009090909424443094007410907070941424443094106400906090642444309404109074106090709"
theorem cover_74867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74867 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_74867)
  decide +kernel
#print axioms cover_74867
end Mub6.Numerical.CircleFullPrototype.Forest
