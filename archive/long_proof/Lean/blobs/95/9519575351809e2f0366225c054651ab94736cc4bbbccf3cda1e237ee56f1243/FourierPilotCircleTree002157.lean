import FourierPilotCircleTree002158
import FourierPilotCircleTree002159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002157
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![6, 5, 7, 4, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002158.state FourierPilotCircleTree002159.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002158.covered FourierPilotCircleTree002159.covered
#print axioms covered
end FourierPilotCircleTree002157
