import canonicalLaneMathlib.AdmissibleClass
import EmbeddingsDifferentialTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure EmbeddingIsotopyPackage (A : AdmissibleClass) where
  sourceManifold : Type u
  targetManifold : Type v
  isotopy : ℝ → (sourceManifold → targetManifold)
  isEmbeddingAtEachTime : Prop
  isotopyExtension : Prop
  conclusionIsotopy : isEmbeddingAtEachTime ∧ isotopyExtension
  witness : conclusionIsotopy = A.object.conclusion

structure EmbeddingIsotopyEvidence {A : AdmissibleClass} (I : EmbeddingIsotopyPackage A) where
  isEmbeddingAtEachTimeClosed : I.isEmbeddingAtEachTime
  isotopyExtensionClosed : I.isotopyExtension

def EmbeddingIsotopyClosed {A : AdmissibleClass} (I : EmbeddingIsotopyPackage A) : Prop :=
  I.isEmbeddingAtEachTime ∧ I.isotopyExtension

theorem embedding_isotopy_closed_from_evidence
    {A : AdmissibleClass} (I : EmbeddingIsotopyPackage A)
    (E : EmbeddingIsotopyEvidence I) : EmbeddingIsotopyClosed I := by
  exact And.intro E.isEmbeddingAtEachTimeClosed E.isotopyExtensionClosed

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse