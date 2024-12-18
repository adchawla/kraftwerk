### HashTag Recommender for Social Posts to Maximize Engagement

**Author**: Amandeep Chawla

---

#### Executive Summary
This project explores the development of a machine learning pipeline to recommend hashtags for social media posts based on content, with the aim of maximizing engagement. The project was divided into distinct phases, including data collection, preprocessing, and modeling. Trending hashtags were scraped from GetDayTrends, tweets were fetched using the Twitter API, and models were trained to predict hashtags based on post content.

A range of machine learning models, including Logistic Regression, Decision Trees, KNN, Naive Bayes, Voting Classifier, and Random Forest, were tested using **CountVectorization**, **TFIDF**, and **BERT embeddings**. The best performance was observed with the **Naive Bayes** model and **Voting Classifier**, achieving a test accuracy of **67.7%** and **66.7%**, respectively. These results highlight the potential of simpler models when combined with optimized preprocessing and hyperparameter tuning.

Future work can focus on expanding the pipeline to include multimedia inputs, such as images and videos, to provide even more effective recommendations. The project's findings underscore the importance of combining robust preprocessing, advanced modeling techniques, and efficient evaluation frameworks in building practical AI solutions.

---

#### Rationale
Hashtags are essential for increasing engagement on social media platforms. Predicting relevant hashtags can save users time and enhance the visibility of their posts. This project explores an efficient approach to hashtag recommendation using trending topics and machine learning models.

---

#### Research Question
How can relevant and effective hashtags be recommended for social media posts based on their content (text and/or images) to maximize engagement?

---

#### Data Sources
- **Trending Hashtags**: Extracted from the **GetDayTrends** website.
- **Tweets**: Fetched using the **Twitter API** for each trending hashtag.

---

#### Methodology
1. **Data Collection**:
    - Scraped trending hashtags from GetDayTrends (Most Tweeted and Longest-Trending).
    - Fetched tweets using the Twitter API.
    - Filtered for English tweets and removed duplicates.
    - Stored data in individual hashtag CSV files and a consolidated dataset.

2. **Data Preprocessing**:
    - Unified hashtag datasets into a single structured format.
    - Adjusted hashtags for consistency.
    - Combined all CSV files into one for modeling purposes.

3. **Data Modelling and Evaluation**:
   - Trained models with **CountVectorization**, **TFIDF**, and **BERT embeddings**:
     - **Logistic Regression**, **Decision Tree**, **KNN**, and **Naive Bayes**.
     - Advanced models like **Voting Classifier** and **Random Forest** were added for comparison.
   - Optimized hyperparameters using **GridSearchCV**.
   - Evaluated using metrics like accuracy, precision, recall, and F1-score.

---

#### Results

| Model                      | Best Parameters                                                                                                    | Training Score | Test Score | Mean Fit Time | Mean Test Time |
| -------------------------- | ------------------------------------------------------------------------------------------------------------------ | -------------- | ---------- | ------------- | -------------- |
| Logistic Regression        | {'classifier__estimator__C': 1, 'classifier__estimator__solver': 'lbfgs'}                                          | 0.608          | 0.667      | 0.099         | 0.003          |
| Decision Tree              | {'classifier__max_depth': None, 'classifier__min_samples_split': 5, 'vectorizer__method': 'count'}                | 0.481          | 0.505      | 0.006         | 0.002          |
| KNN                        | {'classifier__n_neighbors': 7, 'classifier__weights': 'distance'}                                                  | 0.565          | 0.613      | 0.004         | 0.003          |
| Naive Bayes                | {'classifier__alpha': 0.1, 'vectorizer__max_features': None, 'vectorizer__method': 'tfidf'}                       | 0.594          | 0.677      | 0.007         | 0.003          |
| Logistic Regression (BERT) | {'C': 1, 'solver': 'lbfgs'}                                                                                        | 0.414          | 0.495      | 2.951         | 0.001          |
| Decision Tree (BERT)       | {'max_depth': 30, 'min_samples_split': 2}                                                                         | 0.172          | 0.183      | 0.152         | 0.001          |
| KNN (BERT)                 | {'n_neighbors': 3, 'weights': 'distance'}                                                                         | 0.304          | 0.301      | 0.001         | 0.004          |
| Voting Classifier          | {'voting': 'hard', 'weights': (1, 1, 1, 1)}                                                                       | 0.602          | 0.667      | 0.143         | 0.007          |
| RandomForest Classifier    | {'rf__class_weight': None, 'rf__max_depth': None, 'rf__n_estimators': 100}                                        | 0.599          | 0.602      | 0.089         | 0.006          |

#### Best Models: Naive Bayes and Voting Classifier
- **Naive Bayes** achieved the highest test score of **67.7%**, highlighting its effectiveness in handling text data when combined with **TFIDF vectorization**.
- **Voting Classifier**, combining predictions from multiple models, matched the performance with a test score of **66.7%**. This demonstrates the strength of ensemble techniques in balancing predictions across classifiers.

The **Random Forest Classifier** also performed competitively, achieving a test score of **60.2%**, while maintaining a balance between accuracy and runtime.

While models using **BERT embeddings** showed lower accuracy (ranging from 18.3% to 49.5%), they provide a foundation for exploring semantic understanding of textual content in future iterations.

---

#### Next Steps
To further enhance the model:
1. Incorporate **multimedia data** (e.g., images and videos) to improve hashtag recommendations.
2. Explore **deep learning techniques** like CNNs, Transformers, and ensemble methods to process multimedia inputs more effectively.
3. Optimize further with **larger datasets** and additional hyperparameter tuning.

---

#### Outline of Project

- [Data Collection Notebook](./notebooks/01_DataCollection.ipynb)
- [Data Preprocessing Notebook](./notebooks/02_DataPreprocessing.ipynb)
- [Data Modelling and Evaluation Notebook](./notebooks/03_DataModellingAndEvaluation.ipynb)
- [Advanced Data Modelling and Evaluation Notebook](./notebooks/04_AdvancedDataModellingAndEvaluation.ipynb)

---

#### Contact and Further Information
For inquiries, please contact Amandeep Chawla at [adchawla@gmail.com](mailto\:adchawla@gmail.com).

