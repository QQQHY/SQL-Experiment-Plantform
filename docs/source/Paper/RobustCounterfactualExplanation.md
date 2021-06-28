# Robust Counterfactual Explanations Paper List

Generally sorted by date.

***

- **On the Robustness of Interpretability Methods**
  - Author(s)
    - David Alvarez-Melis, Tommi S. Jaakkola
  - Publication
    - presented at 2018 ICML Workshop on Human Interpretability in Machine Learning (WHI 2018)
  - Date
    - 21 Jun 2018
  - Link  
    - <https://arxiv.org/abs/1806.08049>
  - Abstract
    - We argue that robustness of explanations---i.e., that similar inputs should give rise to similar explanations---is a key desideratum for interpretability. We introduce metrics to quantify robustness and demonstrate that current methods do not perform well according to these metrics. Finally, we propose ways that robustness can be enforced on existing interpretability approaches.
  - Comment
    - 解释的鲁棒性：相似的输入有相似解释

***

- **Interpretation of Neural Networks is Fragile** 神经网络的解释是脆弱的
  - Author(s)
    - Amirata Ghorbani, Abubakar Abid, James Zou
  - Publication
    - *AAAI 2019* (CCF A)
  - Date
    - 6 Nov 2018
  - Link  
    - <https://arxiv.org/abs/1710.10547>
  - Abstract
    - In order for machine learning to be deployed and trusted in many applications, it is crucial to be able to reliably explain why the machine learning algorithm makes certain predictions. For example, if an algorithm classifies a given pathology image to be a malignant tumor, then the doctor may need to know which parts of the image led the algorithm to this classification. How to interpret black-box predictors is thus an important and active area of research. A fundamental question is: how much can we trust the interpretation itself? In this paper, we show that interpretation of deep learning predictions is extremely fragile in the following sense: two perceptively indistinguishable inputs with the same predicted label can be assigned very different interpretations. We systematically characterize the fragility of several widely-used feature-importance interpretation methods (saliency maps, relevance propagation, and DeepLIFT) on ImageNet and CIFAR-10. Our experiments show that even small random perturbation can change the feature importance and new systematic perturbations can lead to dramatically different interpretations without changing the label. We extend these results to show that interpretations based on exemplars (e.g. influence functions) are similarly fragile. Our analysis of the geometry of the Hessian matrix gives insight on why fragility could be a fundamental challenge to the current interpretation approaches.
  - Comment
    - 当前的黑盒可解释方法是脆弱的，容易受到对抗样本甚至是随机扰动影响
    - 是否可以仿照此文系统描述CE的脆弱性, i.e., systematically characterize the fragility of several widely-used counterfactual explanation methods

***

- **Explaining Explanations in AI**
  - Author(s)
    - Brent Mittelstadt, Chris Russell, Sandra Wachter
  - Publication
    - FAT* '19: Proceedings of the Conference on Fairness, Accountability, and Transparency
  - Date
    - Jul 2019
  - Link  
    - <https://dl.acm.org/doi/abs/10.1145/3287560.3287574>
  - Abstract
    - Recent work on interpretability in machine learning and AI has focused on the building of simplified models that approximate the true criteria used to make decisions. These models are a useful pedagogical device for teaching trained professionals how to predict what decisions will be made by the complex system, and most importantly how the system might break. However, when considering any such model it's important to remember Box's maxim that "All models are wrong but some are useful." We focus on the distinction between these models and explanations in philosophy and sociology. These models can be understood as a "do it yourself kit" for explanations, allowing a practitioner to directly answer "what if questions" or generate contrastive explanations without external assistance. Although a valuable ability, giving these models as explanations appears more difficult than necessary, and other forms of explanation may not have the same trade-offs. We contrast the different schools of thought on what makes an explanation, and suggest that machine learning might benefit from viewing the problem more broadly.

***

- **The Dangers of Post-hoc Interpretability: Unjustified Counterfactual Explanations** 事后解释性的危险:不合理的反事实解释
  - Author(s)
    - Thibault Laugel, Marie-Jeanne Lesot, Christophe Marsala, Xavier Renard, Marcin Detyniecki 法国索邦大学
  - Publication
    - *IJCAI-19* (CCF A)
  - Date
    - Jul 2019
  - Link  
    - <https://www.ijcai.org/Proceedings/2019/0388.pdf>
    - <https://arxiv.org/abs/1907.09294>
  - Abstract
    - Post-hoc interpretability approaches have been proven to be powerful tools to generate explanations for the predictions made by a trained black-box model. **However, they create the risk of having explanations that are a result of some artifacts learned by the model instead of actual knowledge from the data**. This paper focuses on the case of counterfactual explanations and asks **whether the generated instances can be justified**, i.e. continuously connected to some ground-truth data. We evaluate the risk of generating unjustified counterfactual examples by investigating the local neighborhoods of instances whose predictions are to be explained and show that this risk is quite high for several datasets. Furthermore, we show that most state of the art approaches do not differentiate justified from unjustified counterfactual examples, leading to less useful explanations.
  - Comment
    - 黑盒模型的事后解释是从模型中学习而非从数据中学习 导致了不合理（即，与真实数据不一致）的解释

***

- **Counterfactual Vision-and-Language Navigation via Adversarial Path Sampling**  基于对抗性路径抽样的反事实视觉和语言导航
  - Author(s)
    - Tsu-Jui Fu, Xin Eric Wang, Matthew Peterson, Scott Grafton, Miguel Eckstein, William Yang Wang
  - Publication
    - *ECCV 2020* : European Conference on Computer Vision  (CCF B, Spotlight)
  - Date
    - 2019
  - Link
    - <https://arxiv.org/abs/1911.07308>
  - Abstract
    - Vision-and-Language Navigation (VLN) is a task where agents must decide how to move through a 3D environment to reach a goal by grounding natural language instructions to the visual surroundings. One of the problems of the VLN task is data scarcity since it is difficult to collect enough navigation paths with human-annotated instructions for interactive environments. In this paper, we explore the use of counterfactual thinking as a human-inspired data augmentation method that results in robust models. Counterfactual thinking is a concept that describes the human propensity to create possible alternatives to life events that have already occurred. We propose an adversarial-driven counterfactual reasoning model that can consider effective conditions instead of low-quality augmented data. In particular, we present a model-agnostic adversarial path sampler (APS) that learns to sample challenging paths that force the navigator to improve based on the navigation performance. APS also serves to do pre-exploration of unseen environments to strengthen the model's ability to generalize. We evaluate the influence of APS on the performance of different VLN baseline models using the room-to-room dataset (R2R). The results show that the adversarial training process with our proposed APS benefits VLN models under both seen and unseen environments. And the pre-exploration process can further gain additional improvements under unseen environments.

***

- **Robustness in machine learning explanations: does it matter?**  机器学习解释中的鲁棒性:它重要吗?
  - Author(s)
    - Leif Hancox-Li
  - Publication
    - FAT* '20: Proceedings of the 2020 Conference on Fairness, Accountability, and Transparency
  - Date
    - 27 January 2020
  - Link  
    - <https://dl.acm.org/doi/abs/10.1145/3351095.3372836>
  - Abstract
    - The explainable AI literature contains multiple notions of what an explanation is and what desiderata explanations should satisfy. One implicit source of disagreement is how far the explanations should reflect real patterns in the data or the world. This disagreement underlies debates about other desiderata, such as how robust explanations are to slight perturbations in the input data. I argue that robustness is desirable to the extent that we're concerned about finding real patterns in the world. The import of real patterns differs according to the problem context. In some contexts, non-robust explanations can constitute a moral hazard. By being clear about the extent to which we care about capturing real patterns, we can also determine whether the Rashomon Effect is a boon or a bane.

***

- **CERTIFAI: A Common Framework to Provide Explanations and Analyse the Fairness and Robustness of Black-box Models**
提供解释和分析黑盒模型的公平性和鲁棒性的通用框架
  - Author(s)
    - Shubham Sharma, Jette Henderson, Joydeep Ghosh
  - Publication
    - *AIES '20*: Proceedings of the AAAI/ACM Conference on AI, Ethics, and Society
  - Date
    - 07 February 2020
  - Link  
    - <https://dl.acm.org/doi/abs/10.1145/3375627.3375812>
  - Abstract
    - Concerns within the machine learning community and external pressures from regulators over the vulnerabilities of machine learning algorithms have spurred on the fields of explainability, robustness, and fairness. Often, issues in explainability, robustness, and fairness are confined to their specific sub-fields and few tools exist for model developers to use to simultaneously build their modeling pipelines in a transparent, accountable, and fair way. This can lead to a bottleneck on the model developer's side as they must juggle multiple methods to evaluate their algorithms. In this paper, we present a single framework for analyzing the robustness, fairness, and explainability of a classifier. The framework, which is based on the generation of counterfactual explanations through a custom genetic algorithm, is flexible, model-agnostic, and does not require access to model internals. The framework allows the user to calculate robustness and fairness scores for individual models and generate explanations for individual predictions which provide a means for actionable recourse (changes to an input to help get a desired outcome). This is the first time that a unified tool has been developed to address three key issues pertaining towards building a responsible artificial intelligence system.

***

- **Adversarial Robustness on In- and Out-Distribution Improves Explainability** 在内外分布上的对抗鲁棒性提高了可解释性
  - Author(s)
    - Maximilian Augustin, Alexander Meinke, Matthias Hein
  - Publication
    - *ECCV 2020* : European Conference on Computer Vision  (CCF B)
  - Date
    - 2020
  - Link  
    - <https://arxiv.org/abs/2003.09461>
  - Abstract
    - Neural networks have led to major improvements in image classification but suffer from being non-robust to adversarial changes, unreliable uncertainty estimates on out-distribution samples and their inscrutable black-box decisions. In this work we propose RATIO, a training procedure for Robustness via Adversarial Training on In- and Out-distribution, which leads to robust models with reliable and robust confidence estimates on the out-distribution. RATIO has similar generative properties to adversarial training so that visual counterfactuals produce class specific features. While adversarial training comes at the price of lower clean accuracy, RATIO achieves state-of-the-art l2-adversarial robustness on CIFAR10 and maintains better clean accuracy.

***

- **No Feature Is An Island: Adaptive Collaborations Between Features Improve Adversarial Robustness**
  - Author(s)
    - Yufeng Zhang, Yunan Zhang, ChengXiang Zhai
  - Publication
    - ICLR 2021 (Submission Withdrawn by the Authors)
  - Date
    - 06 Mar 2021
  - Link  
    - <https://openreview.net/forum?id=UkxdauhUYnu>
  - Abstract
    - To classify images, neural networks extract features from raw inputs and then sum them up with fixed weights via the fully connected layer. However, the weights are fixed despite the input types. Such fixed prior limits networks' flexibility in adjusting feature reliance, which in turn enables attackers to flip networks' predictions by corrupting the most brittle features whose value would change drastically by minor perturbations. Inspired by the analysis, we replace the original fixed fully connected layer by dynamically calculating the posterior weight for each feature according to the input and connections between them. Also, a counterfactual baseline is integrated to precisely characterize the credit of each feature's contribution to the robustness and generality of the model. We empirically demonstrate that the proposed algorithm improves both standard and robust error against several strong attacks across various major benchmarks.  Finally, we theoretically prove the minimal structure requirement for our framework to improve adversarial robustness in a fairly simple and natural setting.
  - One-sentence Summary
    - We find dynamic feature weighting can improve adversarial robustness and formulate our algorithm as a cooperative game.

***

- **Plausible Counterfactuals: Auditing Deep Learning Classifiers with Realistic Adversarial Examples**   似是而非的反事实:用现实的对抗样本审计深度学习分类器  
  - Author(s)
    - Alejandro Barredo-Arrieta, Javier Del Ser
  - Publication
    - *IJCNN 2020* : International Joint Conference on Neural Networks  (CCF C)
  
  - Date
    - Mar 2020
  - Link  
    - <https://arxiv.org/abs/2003.11323>
    - <https://ieeexplore.ieee.org/abstract/document/9206728>
  - Abstract
    - The last decade has witnessed the proliferation of Deep Learning models in many applications, achieving unrivaled levels of predictive performance. Unfortunately, the black-box nature of Deep Learning models has posed unanswered questions about what they learn from data. Certain application scenarios have highlighted the importance of assessing the bounds under which Deep Learning models operate, a problem addressed by using assorted approaches aimed at audiences from different domains. However, as the focus of the application is placed more on non-expert users, it results mandatory to provide the means for him/her to trust the model, just like a human gets familiar with a system or process: by understanding the hypothetical circumstances under which it fails. This is indeed the angular stone for this research work: to undertake an adversarial analysis of a Deep Learning model. The proposed framework constructs counterfactual examples by ensuring their plausibility, e.g. there is a reasonable probability that a human could generate them without resorting to a computer program. Therefore, this work must be regarded as valuable auditing exercise of the usable bounds a certain model is constrained within, thereby allowing for a much greater understanding of the capabilities and pitfalls of a model used in a real application. To this end, a Generative Adversarial Network (GAN) and multi-objective heuristics are used to furnish a plausible attack to the audited model, efficiently trading between the confusion of this model, the intensity and plausibility of the generated counterfactual. Its utility is showcased within a human face classification task, unveiling the enormous potential of the proposed framework.

***

- **DACE: Distribution-Aware Counterfactual Explanation by Mixed-Integer Linear Optimization**
  - Author(s)
    - Kentaro Kanamori  , Takuya Takagi  , Ken Kobayashi,  and Hiroki Arimura
  - Publication
    - *IJCAI-20* (CCF A)
  - Date
    - June 2020
  - Link  
    - <https://www.ijcai.org/Proceedings/2020/0395.pdf>
  - Abstract
    - Counterfactual Explanation (CE) is one of the posthoc explanation methods that provides a perturbation vector so as to alter the prediction result obtained from a classifier. Users can directly interpret the perturbation as an ”action” for obtaining their desired decision results. However, an action extracted by existing methods often becomes unrealistic for users because they do not adequately care about the characteristics corresponding to the empirical data distribution such as feature-correlations and outlier risk. To suggest an executable action for users, we propose a new framework of CE for extracting an action by evaluating its reality on the empirical data distribution. The key idea of our proposed method is to define a new cost function based on the Mahalanobis’ distance and the local outlier factor. Then, we propose a mixed-integer linear optimization approach to extracting an optimal action by minimizing our cost function. By experiments on real datasets, we confirm the effectiveness of our method in comparison with existing methods for CE.

***

- **Adversarial Learning for Counterfactual Fairness**  反事实公平的对抗性学习
  - Author(s)
    - Vincent Grari, Sylvain Lamprier, Marcin Detyniecki
  - Publication
    - eprint arXiv:2008.13122
  - Date
    - 2020
  - Link  
    - <https://arxiv.org/abs/2008.13122>
  - Abstract
    - In recent years, fairness has become an important topic in the machine learning research community. In particular, counterfactual fairness aims at building prediction models which ensure fairness at the most individual level. Rather than globally considering equity over the entire population, the idea is to imagine what any individual would look like with a variation of a given attribute of interest, such as a different gender or race for instance. Existing approaches rely on Variational Auto-encoding of individuals, using Maximum Mean Discrepancy (MMD) penalization to limit the statistical dependence of inferred representations with their corresponding sensitive attributes. This enables the simulation of counterfactual samples used for training the target fair model, the goal being to produce similar outcomes for every alternate version of any individual. In this work, we propose to rely on an adversarial neural learning approach, that enables more powerful inference than with MMD penalties, and is particularly better fitted for the continuous setting, where values of sensitive attributes cannot be exhaustively enumerated. Experiments show significant improvements in term of counterfactual fairness for both the discrete and the continuous settings.

***

- **Counterfactual Explanations & Adversarial Examples -- Common Grounds, Essential Differences, and Potential Transfers**
反事实解释和对抗样本——共同点、本质差异和潜在转移
  - Author(s)
    - Timo Freiesleben
  - Publication
    - eprint arXiv:2009.05487
  - Date
    - September 2020
  - Link  
    - <https://arxiv.org/abs/2009.05487>
  - Abstract
    - The same optimization problem underlies counterfactual explanations (CEs) and adversarial examples (AEs). While this is well known, the relationship between the two at the conceptual level remains unclear. The present paper provides exactly the missing conceptual link. We compare CEs and AEs with respect to their philosophical basis, aims, and modeling techniques. We argue that CEs are a more general object-class than AEs. In particular, we introduce the conceptual distinction between feasible and contesting CEs and show that AEs correspond to the latter.

***

- **Semi-supervised counterfactual explanations**
  - Author(s)
    - SURYA SHRAVAN KUMAR SAJJA, Sumanta Mukherjee, Satyam Dwivedi, Vikas C. Raykar
  - Publication
    - ICLR 2021 Reject
  - Date
    - 28 Sept 2020
  - Link  
    - <https://openreview.net/forum?id=o6ndFLB1DST>
  - Abstract
    - Counterfactual explanations for machine learning models are used to find minimal interventions to the feature values such that the model changes the prediction to a different output or a target output. A valid counterfactual explanation should have likely feature values. Here, we address the challenge of generating counterfactual explanations that lie in the same data distribution as that of the training data and more importantly, they belong to the  target class distribution. This requirement has been addressed through the incorporation of auto-encoder reconstruction loss in the counterfactual search process.  Connecting the output behavior of the classifier to the latent space of the auto-encoder has further improved the speed of the counterfactual search process and the interpretability of the resulting counterfactual explanations. Continuing this line of research, we show further improvement in the interpretability of counterfactual explanations when the auto-encoder is trained in a semi-supervised fashion with class tagged input data. We empirically evaluate our approach on several datasets and show considerable improvement in-terms of several metrics.

***  

- **Semantics and explanation: why counterfactual explanations produce adversarial examples in deep neural networks**
语义和解释:为什么反事实解释会在深度神经网络中产生对抗样本
  - Author(s)
    - Kieran Browne, Ben Swift  Australian National University
  - Publication
    - Preprint submitted to *Artificial Intelligence* (CCF A, Under Review)
  - Date
    - 2020
  - Link  
    - <https://arxiv.org/abs/2012.10076>
    - <https://kieranbrowne.com/publications/semantics_and_explanation.pdf>
  - Abstract
    - Recent papers in explainable AI have made a compelling case for counterfactual modes of explanation. While counterfactual explanations appear to be extremely effective in some instances, they are **formally equivalent to adversarial examples**. This presents an apparent **paradox** for explainability researchers: if these two procedures are formally equivalent, what accounts for the explanatory divide apparent between counterfactual explanations and adversarial examples? We resolve this paradox by placing emphasis back on the semantics of counterfactual expressions. Producing satisfactory explanations for deep learning systems will require that we find ways to **interpret the semantics** of hidden layer representations in deep neural networks.
  - Comment
    - 反事实解释和对抗样本形式相同，什么导致了它们在解释上的区别？需要从语义层面进行解释。

***

- **Robust Explanations for Private Support Vector Machines**
  - Author(s)
    - Rami Mochaourab, Sugandh Sinha, Stanley Greenstein, Panagiotis Papapetrou
  - Publication
    - arXiv e-print
  - Date
    - February 2021
  - Link  
    - <https://arxiv.org/abs/2102.03785>
  - Abstract
    - We consider counterfactual explanations for private support vector machines (SVM), where the privacy mechanism that publicly releases the classifier guarantees differential privacy. While privacy preservation is essential when dealing with sensitive data, there is a consequent degradation in the classification accuracy due to the introduced perturbations in the classifier weights. For such classifiers, counterfactual explanations need to be robust against the uncertainties in the SVM weights in order to ensure, with high confidence, that the classification of the data instance to be explained is different than its explanation. We model the uncertainties in the SVM weights through a random vector, and formulate the explanation problem as an optimization problem with probabilistic constraint. Subsequently, we characterize the problem's deterministic equivalent and study its solution. For linear SVMs, the problem is a convex second-order cone program. For non-linear SVMs, the problem is non-convex. Thus, we propose a sub-optimal solution that is based on the bisection method. The results show that, contrary to non-robust explanations, the quality of explanations from the robust solution degrades with increasing privacy in order to guarantee a prespecified confidence level for correct classifications.

***

- **Generating Interpretable Counterfactual Explanations By Implicit Minimisation of Epistemic and Aleatoric Uncertainties**
  - Author(s)
    - Lisa Schut, Oscar Key, Rory McGrath, Luca Costabello, Bogdan Sacaleanu, Medb Corcoran, Yarin Gal
  - Publication
    - Proceedings of the 24th International Conference on Artificial Intelligence and Statistics (AISTATS) 2021 (CCF C)
  - Date
    - Mar 2021
  - Link  
    - <https://arxiv.org/abs/2103.08951>
  - Abstract
    - Counterfactual explanations (CEs) are a practical tool for demonstrating why machine learning classifiers make particular decisions. For CEs to be useful, it is important that they are easy for users to interpret. Existing methods for generating interpretable CEs rely on auxiliary generative models, which may not be suitable for complex datasets, and incur engineering overhead. We introduce a simple and fast method for generating interpretable CEs in a white-box setting without an auxiliary model, by using the predictive uncertainty of the classifier. Our experiments show that our proposed algorithm generates more interpretable CEs, according to IM1 scores, than existing methods. Additionally, our approach allows us to estimate the uncertainty of a CE, which may be important in safety-critical applications, such as those in the medical domain.
  - Code
    - Interpretable Counterfactual Explanations By Minimizing Uncertainty 来自 <https://github.com/oscarkey/explanations-by-minimizing-uncertainty>

***  

- **Individual Explanations in Machine Learning Models: A Survey for Practitioners**
  - Author(s)
    - Alfredo Carrillo, Luis F. Cantú, Alejandro Noriega
  - Publication
    - eprint arXiv:2104.04144
  - Date
    - April 2021
  - Link  
    - <https://arxiv.org/abs/2104.04144>
  - Abstract
    - In recent years, the use of sophisticated statistical models that influence decisions in domains of high societal relevance is on the rise. Although these models can often bring substantial improvements in the accuracy and efficiency of organizations, many governments, institutions, and companies are reluctant to their adoption as their output is often difficult to explain in human-interpretable ways. Hence, these models are often regarded as black-boxes, in the sense that their internal mechanisms can be opaque to human audit. In real-world applications, particularly in domains where decisions can have a sensitive impact--e.g., criminal justice, estimating credit scores, insurance risk, health risks, etc.--model interpretability is desired. Recently, the academic literature has proposed a substantial amount of methods for providing interpretable explanations to machine learning models. This survey reviews the most relevant and novel methods that form the state-of-the-art for addressing the particular problem of explaining individual instances in machine learning. It seeks to provide a succinct review that can guide data science and machine learning practitioners in the search for appropriate methods to their problem domain.

***

- **On the Connections between Counterfactual Explanations and Adversarial Examples** 论反事实解释与对抗样本之间的联系
  - Author(s)
    - Martin Pawelczyk, Shalmali Joshi, Chirag Agarwal, Sohini Upadhyay, Himabindu Lakkaraju Harvard University
  - Publication
    - arXiv e-print
  - Date
    - 2021
  - Link  
    - <https://arxiv.org/abs/2106.09992>
  - Abstract
    - Counterfactual explanations and adversarial examples have emerged as critical research areas for addressing the explainability and robustness goals of machine learning (ML). While counterfactual explanations were developed with the goal of providing recourse to individuals adversely impacted by algorithmic decisions, adversarial examples were designed to expose the vulnerabilities of ML models. While prior research has hinted at the commonalities between these frameworks, there has been little to no work on systematically exploring the connections between the literature on counterfactual explanations and adversarial examples. In this work, we make one of the first attempts at formalizing the connections between counterfactual explanations and adversarial examples. More specifically, we theoretically analyze salient counterfactual explanation and adversarial example generation methods, and highlight the conditions under which they behave similarly. Our analysis demonstrates that several popular counterfactual explanation and adversarial example generation methods such as the ones proposed by Wachter et. al. and Carlini and Wagner (with mean squared error loss), and C-CHVAE and natural adversarial examples by Zhao et. al. are equivalent. We also bound the distance between counterfactual explanations and adversarial examples generated by Wachter et. al. and DeepFool methods for linear models. Finally, we empirically validate our theoretical findings using extensive experimentation with synthetic and real world datasets.
