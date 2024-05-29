# Word Embeddings

## Count based methods
### TF-IDF
Based on information retrieval. Emphesizing words unique to a document in a corpus. Basically, how frequent this word appears in the given document vs how freq this is across all documents.

$TF = \frac{\text{Freq of occurance of this word in this doc}}{\text{Total words in this doc}}$

$IDF = \log{\frac{\text{Total documents}}{\text{Total documents where this word occurs}}}$

$TF-IDF = TF \times IDF$

## Sentence vectors
### Reference
1. [Sentence embedding techniques](https://www.baeldung.com/cs/sentence-vectors-word2vec)
