import FourierPilotCircleTree002170
import FourierPilotCircleTree002201
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002169
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![27, 10, 15, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002170.state FourierPilotCircleTree002201.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002170.covered FourierPilotCircleTree002201.covered
#print axioms covered
end FourierPilotCircleTree002169
