import AdaptiveCircleTree

import FourierPilotProofBatch0001

/- Preserved declarations from candidate module FourierPilotCircleTree003025. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003025
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![6, 4, 7, 5, 3]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))) (.reject ⟨3, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003025


/- Preserved declarations from candidate module FourierPilotCircleTree003027. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003027
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![6, 5, 6, 2, 3]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003027


/- Preserved declarations from candidate module FourierPilotCircleTree003030. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003030
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![6, 5, 7, 4, 6]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003030


/- Preserved declarations from candidate module FourierPilotCircleTree003032. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003032
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![12, 5, 7, 4, 7]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003032


/- Preserved declarations from candidate module FourierPilotCircleTree003035. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003035
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![13, 10, 14, 4, 7]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨4, by decide⟩)))) (.reject ⟨4, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003035


/- Preserved declarations from candidate module FourierPilotCircleTree003038. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003038
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![13, 10, 15, 8, 14]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨3, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)))))) (.reject ⟨4, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003038


/- Preserved declarations from candidate module FourierPilotCircleTree003040. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003040
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![26, 10, 15, 8, 15]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨5, by decide⟩))) (.reject ⟨4, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003040


/- Preserved declarations from candidate module FourierPilotCircleTree003043. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003043
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![27, 20, 30, 8, 15]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)))))) (.reject ⟨4, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.reject ⟨2, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩))) (.reject ⟨0, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003043


/- Preserved declarations from candidate module FourierPilotCircleTree003046. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003046
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![27, 20, 31, 16, 30]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)))) (.reject ⟨3, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨5, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨4, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)))))))) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)))) (.reject ⟨4, by decide⟩)))) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))))) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩))))))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))))) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)))))) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨3, by decide⟩)))))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))))))) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩))) (.reject ⟨4, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩)))) (.reject ⟨5, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)))) (.reject ⟨5, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨5, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.reject ⟨4, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩))))))))))) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)))) (.reject ⟨2, by decide⟩))))))) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨4, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩))))) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)))))) (.reject ⟨1, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)))))) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)))))))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨1, by decide⟩)))))) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)))))) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨5, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)))))))))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))))))) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩))))) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)))) (.reject ⟨2, by decide⟩))))) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨5, by decide⟩))) (.reject ⟨5, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))))))) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨2, by decide⟩))))))) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)))))))))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003046


/- Preserved declarations from candidate module FourierPilotCircleTree003047. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003047
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![27, 20, 31, 16, 31]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩))))) (.reject ⟨2, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨2, by decide⟩)))))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003047


/- Preserved declarations from candidate module FourierPilotCircleTree003050. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003050
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![54, 20, 31, 17, 30]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩))))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨4, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003050


/- Preserved declarations from candidate module FourierPilotCircleTree003054. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003054
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![55, 40, 31, 34, 60]
def tree : Tree 48 := (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨5, by decide⟩))) (.reject ⟨4, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003054


/- Preserved declarations from candidate module FourierPilotCircleTree003056. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003056
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![55, 40, 62, 34, 61]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)))))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨4, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003056


/- Preserved declarations from candidate module FourierPilotCircleTree003058. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003058
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![110, 40, 63, 34, 61]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩))))) (.reject ⟨5, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))))) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))))))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))))) (.reject ⟨4, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003058


/- Preserved declarations from candidate module FourierPilotCircleTree003062. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003062
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![111, 80, 63, 68, 122]
def tree : Tree 48 := (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨5, by decide⟩))) (.reject ⟨4, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨0, by decide⟩))))))) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨3, by decide⟩)))) (.reject ⟨4, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩))))) (.reject ⟨5, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003062


/- Preserved declarations from candidate module FourierPilotCircleTree003064. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003064
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![111, 80, 126, 68, 123]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)))) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003064

#print axioms FourierPilotCircleTree003025.covered
#print axioms FourierPilotCircleTree003027.covered
#print axioms FourierPilotCircleTree003030.covered
#print axioms FourierPilotCircleTree003032.covered
#print axioms FourierPilotCircleTree003035.covered
#print axioms FourierPilotCircleTree003038.covered
#print axioms FourierPilotCircleTree003040.covered
#print axioms FourierPilotCircleTree003043.covered
#print axioms FourierPilotCircleTree003046.covered
#print axioms FourierPilotCircleTree003047.covered
#print axioms FourierPilotCircleTree003050.covered
#print axioms FourierPilotCircleTree003054.covered
#print axioms FourierPilotCircleTree003056.covered
#print axioms FourierPilotCircleTree003058.covered
#print axioms FourierPilotCircleTree003062.covered
#print axioms FourierPilotCircleTree003064.covered
