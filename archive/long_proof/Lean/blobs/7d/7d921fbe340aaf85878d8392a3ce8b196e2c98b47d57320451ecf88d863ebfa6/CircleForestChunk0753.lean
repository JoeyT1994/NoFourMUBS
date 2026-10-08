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
def state_1481654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 13)))
def hex_1481654 : String := "404309444107050709"
theorem cover_1481654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1481654)
  decide +kernel
#print axioms cover_1481654

def state_1481665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
def hex_1481665 : String := "4442410940430944090909414043084408090840430844084209080842094105400A09"
theorem cover_1481665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481665 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1481665)
  decide +kernel
#print axioms cover_1481665

def state_1481703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 16) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 26)))
def hex_1481703 : String := "404344090944420741404344070744420741804043074405074307440506070940434442054107050744050743094405094207410740070909"
theorem cover_1481703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 57) (hex := hex_1481703)
  decide +kernel
#print axioms cover_1481703

def state_1481760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 17) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 26)))
def hex_1481760 : String := "4043444205414043090509050944054205414043070709054309440509"
theorem cover_1481760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1481760)
  decide +kernel
#print axioms cover_1481760

def state_1481792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 26)))
def hex_1481792 : String := "44424140430844420905050840430844424109060642090A0808420905"
theorem cover_1481792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1481792)
  decide +kernel
#print axioms cover_1481792

def state_1481826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 102 else 52)))
def hex_1481826 : String := "4442414043098009404344090944424109400709418040060842070A094105400A08420905"
theorem cover_1481826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1481826)
  decide +kernel
#print axioms cover_1481826

def state_1481866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 64) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 104)))
def hex_1481866 : String := "80"
theorem cover_1481866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1481866)
  decide +kernel
#print axioms cover_1481866

def state_1481870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 206 else 208)))
def hex_1481870 : String := "4241804043440507054309054180404306440642410A05064344084209084442418005084241800541804006430844060A"
theorem cover_1481870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1481870)
  decide +kernel
#print axioms cover_1481870
end Mub6.Numerical.CircleFullD0.Forest
