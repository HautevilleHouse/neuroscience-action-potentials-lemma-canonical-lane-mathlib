import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure NeuroscienceAdmittedObject where
  neuronModel : String
  actionPotentialGenerated : Prop
  thresholdCrossed : Prop
  refractoryPeriodObserved : Prop

structure AdmissibleClass where
  object : NeuroscienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.actionPotentialGenerated ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse
