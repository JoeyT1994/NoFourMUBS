import FourierPilotCircleTree002173
import FourierPilotCircleTree002176
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002172
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![27, 20, 31, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002173.state FourierPilotCircleTree002176.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002173.covered FourierPilotCircleTree002176.covered
#print axioms covered
end FourierPilotCircleTree002172
