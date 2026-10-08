import AdaptiveCircleTree

import FourierPilotProofBatch0001

/- Preserved declarations from candidate module FourierPilotCircleTree005218. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005218
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![19, 24, 16, 26, 17]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨3, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.reject ⟨1, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005218


/- Preserved declarations from candidate module FourierPilotCircleTree005219. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005219
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![19, 24, 17, 26, 8]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨4, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨3, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨0, by decide⟩)))) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005219


/- Preserved declarations from candidate module FourierPilotCircleTree005220. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005220
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![9, 24, 8, 27, 8]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005220


/- Preserved declarations from candidate module FourierPilotCircleTree005221. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005221
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![9, 25, 8, 13, 8]
def tree : Tree 48 := (.reject ⟨1, by decide⟩)
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005221


/- Preserved declarations from candidate module FourierPilotCircleTree005222. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005222
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![9, 12, 8, 13, 9]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005222


/- Preserved declarations from candidate module FourierPilotCircleTree005223. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005223
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![9, 12, 9, 13, 4]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005223


/- Preserved declarations from candidate module FourierPilotCircleTree005224. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005224
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 13, 4, 6, 4]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005224


/- Preserved declarations from candidate module FourierPilotCircleTree005225. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005225
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 6, 4, 6, 5]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005225


/- Preserved declarations from candidate module FourierPilotCircleTree005226. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005226
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 6, 4, 7, 2]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨1, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005226


/- Preserved declarations from candidate module FourierPilotCircleTree005227. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005227
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 6, 5, 3, 2]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005227


/- Preserved declarations from candidate module FourierPilotCircleTree005228. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005228
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 7, 2, 3, 2]
def tree : Tree 48 := (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005228


/- Preserved declarations from candidate module FourierPilotCircleTree005231. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005231
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![5, 6, 4, 3, 2]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨4, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩))))) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨5, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨5, by decide⟩)) (.reject ⟨2, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩))))))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨4, by decide⟩)))))) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨2, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨5, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨3, by decide⟩)) (.reject ⟨5, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩))))))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)))) (.reject ⟨2, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨2, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨3, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)))))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨1, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)))))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨3, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩))))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨2, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))))))))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))) (.reject ⟨2, by decide⟩))) (.reject ⟨1, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)))) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩))))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩))) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))))))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))))) (.reject ⟨5, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩)))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩))) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨0, by decide⟩))))) (.reject ⟨5, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005231


/- Preserved declarations from candidate module FourierPilotCircleTree005232. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005232
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![5, 6, 5, 3, 2]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨5, by decide⟩)))) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)))) (.reject ⟨5, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))))))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨3, by decide⟩))) (.reject ⟨1, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)))) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨0, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005232


/- Preserved declarations from candidate module FourierPilotCircleTree005233. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005233
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![5, 7, 2, 3, 2]
def tree : Tree 48 := (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)))) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005233


/- Preserved declarations from candidate module FourierPilotCircleTree005234. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005234
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![2, 3, 2, 3, 3]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨0, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)))))) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨5, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨0, by decide⟩)))) (.reject ⟨5, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005234


/- Preserved declarations from candidate module FourierPilotCircleTree005238. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005238
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 3, 3, 2, 2]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩))))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨0, by decide⟩)))))) (.reject ⟨5, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))))) (.reject ⟨4, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)))) (.reject ⟨3, by decide⟩))))) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))))))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨0, by decide⟩))))) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)))))) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005238
