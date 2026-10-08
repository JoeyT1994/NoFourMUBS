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
def state_1653496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 40)))
def hex_1653496 : String := "414043444205410A050544424109094140430A0909404344050509094241404305A00505414043440A05A00A404305A0054305440905404305444205090505"
theorem cover_1653496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653496 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1653496)
  decide +kernel
#print axioms cover_1653496

def state_1653562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 102 else 40)))
def hex_1653562 : String := "44424107050707"
theorem cover_1653562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1653562)
  decide +kernel
#print axioms cover_1653562

def state_1653570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 103 else 80)))
def hex_1653570 : String := "42414043440707440942094140060909430A0940430709094140430744060643074409420941070640430706430709"
theorem cover_1653570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653570 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1653570)
  decide +kernel
#print axioms cover_1653570

def state_1653618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 122 else (if j.val < 4 then 103 else 81)))
def hex_1653618 : String := "414043074442410A4007094140070707424140070A400705074305440A0A404305444241400705050742050705"
theorem cover_1653618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653618 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1653618)
  decide +kernel
#print axioms cover_1653618

def state_1653663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 123 else (if j.val < 4 then 103 else 81)))
def hex_1653663 : String := "41404307440707430744420A0708400743054442050605"
theorem cover_1653663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653663 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1653663)
  decide +kernel
#print axioms cover_1653663

def state_1653686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
def hex_1653686 : String := "4305444209410A0942410A05414043050A0505"
theorem cover_1653686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1653686)
  decide +kernel
#print axioms cover_1653686

def state_1653705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 101) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
def hex_1653705 : String := "404305444241404305060505414006430506054205414007050505"
theorem cover_1653705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653705 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1653705)
  decide +kernel
#print axioms cover_1653705

def state_1653732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 41)))
def hex_1653732 : String := "424140430544420541404305A0050505050508"
theorem cover_1653732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653732 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1653732)
  decide +kernel
#print axioms cover_1653732

def state_1653751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
def hex_1653751 : String := "05"
theorem cover_1653751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1653751)
  decide +kernel
#print axioms cover_1653751
end Mub6.Numerical.CircleFullD0.Forest
