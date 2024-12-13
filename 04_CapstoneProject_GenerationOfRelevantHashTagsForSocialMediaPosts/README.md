### HashTag Recommender for Social Posts to Maximize Engagement

**Author**: Amandeep Chawla

---

#### Executive Summary
This project explores the development of a machine learning pipeline to recommend hashtags for social media posts based on content, with the aim of maximizing engagement. The project was divided into distinct phases, including data collection, preprocessing, and modeling. Trending hashtags were scraped from GetDayTrends, tweets were fetched using the Twitter API, and models were trained to predict hashtags based on post content.

Several machine learning techniques were employed, including Logistic Regression, Decision Tree, K-Nearest Neighbors (KNN), and Naive Bayes, with text representations generated using CountVectorization, TFIDF, and BERT embeddings. Among these, Naive Bayes paired with TFIDF emerged as the best-performing model, achieving high accuracy while maintaining computational efficiency. The results highlight the potential of such systems to enhance social media content visibility and engagement.

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

3. **Data Modeling**:
   - Trained classifiers (**KNN**, **Logistic Regression**, and **Decision Trees**).
   - Employed **GridSearchCV** for hyperparameter optimization.

4. **Data Modelling and Evaluation**:
    - Trained four models (Logistic Regression, Decision Tree, KNN, and Naive Bayes) using CountVectorization and TFIDF techniques.
    - Trained three additional models (Logistic Regression, Decision Tree, and KNN) using BERT embeddings for textual representation.
    - Optimized hyperparameters using GridSearchCV.
    - Evaluated using metrics like accuracy, precision, recall, and F1-score.

---

#### Results
- **Model Performance**:
  - Logistic Regression achieved the highest test score (0.607).
  - Detailed performance metrics and run times for all models are as follows:

| Model                  | Best Parameters                              | Training Score | Test Score | Mean Fit Time | Mean Test Time |
|------------------------|----------------------------------------------|----------------|------------|---------------|----------------|
| Logistic Regression    | {'C': 10, 'solver': 'saga', 'max_features': None, 'method': 'tfidf', 'stop_words': 'english'} | **0.574**         | 0.580      | 0.118         | 0.003          |
| Decision Tree          | {'max_depth': None, 'min_samples_split': 5, 'max_features': None, 'method': 'count', 'stop_words': 'english'}| 0.491         | 0.562      | 0.008         | 0.002          |
| K-Nearest Neighbors    | {'n_neighbors': 5, 'weights': 'distance', 'max_features': None, 'method': 'tfidf', 'stop_words': 'english'}              | 0.543         | 0.589      | 0.005         | 0.004          |
| Naive Bayes           | {'alpha': 0.1, 'max_features': None, 'method': 'tfidf', 'stop_words': 'english'}            | 0.565         | **0.607**      | 0.005         | 0.002          |
| Logistic Regression (BERT) | {'C': 0.1, 'solver': 'lbfgs'} | 0.412         | 0.464      | 3.727         | 0.002          |
| Decision Tree (BERT)    | {'max_depth': None, 'min_samples_split': 5} | 0.225         | 0.205      | 0.197         | 0.001          |
| KNN (BERT)      | {'n_neighbors': 3, 'weights': 'distance'} | 0.297         | 0.321      | 0.001         | 0.018          |  

---


- **Best Model**: Naive Bayes  
Naive Bayes emerged as the best-performing model, achieving a test score of **0.607** and a training score of **0.565**. This indicates a good balance between generalization and accuracy. The model also demonstrated computational efficiency with minimal runtime during both fitting and testing. The success of Naive Bayes can be attributed to its simplicity and effectiveness in handling high-dimensional data, particularly when paired with the **TFIDF vectorization** technique.

While models using **BERT** embeddings demonstrated lower accuracy, they provide a foundation for future exploration of semantic understanding in text-based data.

---

#### Next Steps
- To further enhance the model, the pipeline can be extended to process multimedia content such as images and videos for more comprehensive hashtag recommendations.
- Additionally, exploring deep learning models like Transformers and CNNs for multimedia data could improve predictive performance.
- Explore advanced models like Neural Networks and Random Forests for further improvement.
- Integrate the system into a real-time hashtag recommendation application.

---

#### Outline of Project

- [Link to notebook 1 (Data Collection)](./notebooks/01_DataCollection.ipynb)
- [Link to notebook 2 (Data Preprocessing)](./notebooks/02_DataPreprocessing.ipynb)
- [Link to notebook 3 (Data Modelling and Evaluation)](./notebooks/03_DataModellingAndEvaluation.ipynb)

---

##### Contact and Further Information
For inquiries, please contact **Amandeep Chawla** at [adchawla@gmail.com](mailto:adchawla@gmail.com).

