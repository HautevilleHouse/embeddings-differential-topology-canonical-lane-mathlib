import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure EmbeddingAdmittedObject where
  sourceManifold : Type u
  targetManifold : Type v
  sourceSmooth : Prop
  targetSmooth : Prop
  embeddingExists : Prop
  dimensionCondition : Prop
  conclusion : embeddingExists

structure AdmissibleClass where
  object : EmbeddingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.embeddingExists ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse