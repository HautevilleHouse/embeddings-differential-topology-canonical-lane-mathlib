import canonicalLaneMathlib.AdmissibleClass
import EmbeddingsDifferentialTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure TransversalityPackage (A : AdmissibleClass) where
  sourceManifold : Type u
  targetManifold : Type v
  submanifold : targetManifold → Prop
  map : sourceManifold → targetManifold
  isTransverse : Prop
  perturbationExists : Prop
  conclusionTransverse : isTransverse ∧ perturbationExists
  witness : conclusionTransverse = A.object.conclusion

structure TransversalityEvidence {A : AdmissibleClass} (T : TransversalityPackage A) where
  isTransverseClosed : T.isTransverse
  perturbationExistsClosed : T.perturbationExists

def TransversalityClosed {A : AdmissibleClass} (T : TransversalityPackage A) : Prop :=
  T.isTransverse ∧ T.perturbationExists

theorem transversality_closed_from_evidence
    {A : AdmissibleClass} (T : TransversalityPackage A)
    (E : TransversalityEvidence T) : TransversalityClosed T := by
  exact And.intro E.isTransverseClosed E.perturbationExistsClosed

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse