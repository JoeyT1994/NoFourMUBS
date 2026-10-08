import FourierPilotCircleTree004303
import FourierPilotCircleTree004330
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004302
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![20, 15, 27, 26, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004303.state FourierPilotCircleTree004330.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004303.covered FourierPilotCircleTree004330.covered
#print axioms covered
end FourierPilotCircleTree004302
