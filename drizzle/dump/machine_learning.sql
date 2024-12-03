INSERT INTO learning_paths (id, name, description, created_at, updated_at)
VALUES (2, 'Machine Learning', 'Learn the basics of Machine Learning, including concepts and tools.', 
        '2024-03-01', '2024-03-02');
INSERT INTO courses (id, name, learning_path_id, description, order_index, 
                     level, total_modules, total_enrollments, rating, estimated_duration, 
                     created_at, updated_at)
VALUES (4, 'Introduction to Machine Learning', 2, 
        'Learn the fundamentals of machine learning, including types of learning and the most common algorithms.', 1, 
        'beginner', 3, 101829, 
        4.86, 16, 
        '2024-11-02', '2024-11-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (10, 4, 'Types of Machine Learning', 
        'Understand supervised, unsupervised, and reinforcement learning.', 1, 
        '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (28, 10, 'Supervised Learning', 
                                '<h1>1. Introduction to Supervised Learning</h1>
<p>Supervised learning is a type of machine learning where the model is trained on labeled data. The goal is to learn a mapping from input features to output labels, allowing the model to make predictions on unseen data.</p>
<p>In supervised learning, the training data consists of input-output pairs, where the output is known and used to guide the model''s learning process.</p>

<h2>Key Concepts:</h2>
<ul>
    <li><strong>Labeled Data:</strong> Each input in the training set is paired with the correct output (label).</li>
    <li><strong>Goal:</strong> The model learns to predict the correct output for new, unseen data based on patterns learned from the training data.</li>
    <li><strong>Supervised Learning Tasks:</strong> Typically categorized into two main types:
        <ul>
            <li><strong>Classification:</strong> Predicting a discrete label or category.</li>
            <li><strong>Regression:</strong> Predicting a continuous value.</li>
        </ul>
    </li>
</ul>

<h1>2. Classification vs. Regression</h1>
<p>Supervised learning problems can generally be divided into two categories:</p>

<h2>Classification:</h2>
<ul>
    <li>The output variable is categorical (discrete).</li>
    <li><strong>Example:</strong> Predicting whether an email is spam or not (yes/no), diagnosing a disease based on symptoms (positive/negative).</li>
    <li><strong>Common algorithms:</strong> Logistic Regression, Decision Trees, Random Forests, Support Vector Machines (SVM).</li>
</ul>

<h2>Regression:</h2>
<ul>
    <li>The output variable is continuous.</li>
    <li><strong>Example:</strong> Predicting house prices based on features like location, square footage, etc., predicting the temperature for the next day.</li>
    <li><strong>Common algorithms:</strong> Linear Regression, Ridge Regression, Decision Trees for Regression.</li>
</ul>

<h1>3. How Supervised Learning Works</h1>
<p>In supervised learning, the process typically follows these steps:</p>
<ol>
    <li><strong>Data Collection:</strong> Collect a labeled dataset where each input is associated with the correct output.</li>
    <li><strong>Model Selection:</strong> Choose an appropriate model or algorithm (e.g., Decision Tree, Neural Network, Linear Regression).</li>
    <li><strong>Training:</strong> The model is trained on the labeled data, learning to map inputs to outputs by minimizing the error between predicted and actual outputs.</li>
    <li><strong>Evaluation:</strong> After training, evaluate the model''s performance using test data that it hasn’t seen before.</li>
    <li><strong>Prediction:</strong> The trained model is then used to make predictions on new, unseen data.</li>
</ol>

<h1>4. Key Supervised Learning Algorithms</h1>
<p>Here are some of the most common supervised learning algorithms:</p>

<h2>Linear Regression (For Regression Problems)</h2>
<ul>
    <li>Predicts a continuous value based on the relationship between the input features and the output.</li>
    <li><strong>Example:</strong> Predicting the price of a house based on features like size, location, and age.</li>
    <li><strong>Formula:</strong> <code>y = mx + b</code></li>
</ul>

<h2>Logistic Regression (For Classification Problems)</h2>
<ul>
    <li>Used for binary classification tasks where the output is a binary label (0 or 1, true or false).</li>
    <li><strong>Example:</strong> Predicting if a patient has a certain disease based on medical test results.</li>
    <li><strong>Formula:</strong> <code>p = 1 / (1 + e^-z)</code> (Sigmoid function).</li>
</ul>

<h2>Decision Trees (For Both Classification and Regression)</h2>
<ul>
    <li>A tree-like model used for both classification (categorical output) and regression (continuous output).</li>
    <li><strong>Example:</strong> Predicting customer churn based on features like age, income, etc.</li>
</ul>

<h2>Random Forests (For Both Classification and Regression)</h2>
<ul>
    <li>An ensemble method that combines multiple decision trees to improve model accuracy and prevent overfitting.</li>
    <li><strong>Example:</strong> Predicting whether a customer will click on an ad based on their browsing history.</li>
</ul>

<h2>Support Vector Machines (SVM) (For Classification)</h2>
<ul>
    <li>A classifier that finds the optimal hyperplane that best separates the data into different classes.</li>
    <li><strong>Example:</strong> Classifying images into different categories (e.g., cats vs. dogs).</li>
</ul>

<h2>K-Nearest Neighbors (KNN) (For Classification and Regression)</h2>
<ul>
    <li>A non-parametric method where predictions are made based on the majority label of the k-nearest data points in the training set.</li>
    <li><strong>Example:</strong> Recommending products based on user preferences.</li>
</ul>
.', 1, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (29, 10, 'Unsupervised Learning', 
                                '<h1>1. Introduction to Unsupervised Learning</h1>
<p>Unsupervised learning is a type of machine learning where the model is trained using unlabeled data. Unlike supervised learning, where the model learns from data with known outputs (labels), in unsupervised learning, the model must identify patterns, structures, or relationships within the data on its own.</p>

<h2>Key Characteristics of Unsupervised Learning:</h2>
<ul>
    <li><strong>Unlabeled Data:</strong> There are no target labels provided for training. The model must infer the underlying structure.</li>
    <li><strong>Goal:</strong> To uncover hidden patterns or groupings in the data without explicit guidance.</li>
    <li><strong>Common Tasks:</strong> Clustering, anomaly detection, dimensionality reduction.</li>
</ul>

<h1>2. Types of Unsupervised Learning Techniques</h1>
<p>Unsupervised learning techniques can be broadly divided into three main types based on their purpose:</p>
<ul>
    <li><strong>Clustering</strong></li>
    <li><strong>Anomaly Detection</strong></li>
    <li><strong>Dimensionality Reduction</strong></li>
</ul>
<p>Each of these techniques serves different purposes and can be applied to various real-world problems.</p>

<h1>3. Clustering</h1>
<p>Clustering is a technique that groups similar data points together based on certain characteristics. It’s one of the most popular techniques in unsupervised learning. The goal is to find intrinsic groups within the data without knowing what these groups are in advance.</p>

<h2>Key Clustering Algorithms:</h2>

<ul>
    <li><strong>K-Means:</strong> A widely-used clustering algorithm that partitions the data into K clusters based on distance metrics (e.g., Euclidean distance). It assigns each point to the nearest centroid and then re-calculates the centroid until convergence.
        <ul>
            <li><strong>Example Use Case:</strong> Customer segmentation based on purchasing behavior.</li>
        </ul>
    </li>

    <li><strong>Hierarchical Clustering:</strong> Builds a hierarchy of clusters either by merging small clusters (agglomerative) or by splitting larger clusters (divisive).
        <ul>
            <li><strong>Example Use Case:</strong> Organizing documents based on content similarity.</li>
        </ul>
    </li>

    <li><strong>DBSCAN (Density-Based Spatial Clustering of Applications with Noise):</strong> Identifies clusters based on density, allowing the algorithm to find arbitrarily shaped clusters and handle noise (outliers).
        <ul>
            <li><strong>Example Use Case:</strong> Detecting groups of similar users or events in social media data.</li>
        </ul>
    </li>
</ul>
.', 2, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (30, 10, 'Reinforcement Learning', 
                                '<h1>1. Introduction to Reinforcement Learning</h1>
<p>Reinforcement learning (RL) is a type of machine learning where an agent learns to make decisions by performing actions in an environment to achieve a goal. Unlike supervised learning, where the model learns from labeled data, reinforcement learning relies on trial and error and feedback from the environment to improve performance over time.</p>

<p>In RL, the agent explores the environment, takes actions, and receives feedback in the form of rewards or punishments. The goal of the agent is to maximize the cumulative reward over time by learning which actions lead to favorable outcomes.</p>

<h1>2. Key Components of Reinforcement Learning</h1>
<p>There are several key components in a reinforcement learning problem that define how the agent learns and interacts with its environment:</p>

<ul>
    <li><strong>Agent:</strong> The decision-maker that interacts with the environment and takes actions. It learns from the feedback provided by the environment to improve its behavior over time.</li>
    <li><strong>Environment:</strong> The external system with which the agent interacts. The environment provides feedback (rewards or punishments) in response to the agent’s actions.</li>
    <li><strong>State (s):</strong> The current situation or configuration of the environment. The state contains all the necessary information the agent needs to make decisions at any given time.</li>
    <li><strong>Action (a):</strong> The set of all possible moves or decisions the agent can make in any given state. The agent selects an action based on its current state.</li>
    <li><strong>Reward (r):</strong> A scalar feedback signal that the agent receives after taking an action in a specific state. Rewards can be positive (rewarding the agent) or negative (punishing the agent). The agent''s goal is to maximize cumulative rewards.</li>
    <li><strong>Policy (π):</strong> A strategy or mapping from states to actions. The policy dictates the agent''s behavior at any given time — which action to take in which state.</li>
    <li><strong>Value Function (V):</strong> A function that estimates the long-term reward an agent can expect to receive from a given state, following a particular policy. The value function helps the agent determine which states are more valuable to reach.</li>
    <li><strong>Q-Function (Q):</strong> A function that estimates the expected future reward for an agent when taking a certain action in a given state and following a particular policy thereafter. The Q-function is often used to guide action selection.</li>
</ul>

<h1>3. The Reinforcement Learning Process</h1>
<p>Reinforcement learning operates through an iterative process:</p>

<ol>
    <li><strong>Initialization:</strong> The agent starts in a random state (or an initial state).</li>
    <li><strong>Action Selection:</strong> The agent chooses an action based on its current policy (e.g., using exploration or exploitation).</li>
    <li><strong>Environment Interaction:</strong> The agent performs the chosen action in the environment, transitioning to a new state.</li>
    <li><strong>Reward Feedback:</strong> The environment provides a reward or punishment based on the agent''s action.</li>
    <li><strong>Learning:</strong> The agent uses the reward feedback to update its knowledge and improve its policy, so it can make better decisions in the future.</li>
    <li><strong>Repeat:</strong> This process is repeated over multiple steps, and the agent continuously refines its policy to maximize cumulative rewards.</li>
</ol>

<p>This trial-and-error learning process allows the agent to adapt and improve its behavior as it interacts more with the environment.</p>
.', 3, 
                                '2024-11-02', '2024-11-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (11, 4, 'Algorithms in Machine Learning', 
        'Learn about popular algorithms such as linear regression and decision trees.', 2, 
        '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (31, 11, 'Linear Regression', 
                                '<h1>1. Introduction to Linear Regression</h1>
<p>Linear Regression is one of the most fundamental and widely used statistical techniques for modeling the relationship between a dependent variable (also called the target or response) and one or more independent variables (also called predictors or features).</p>

<p>In linear regression, the goal is to find the best-fitting line (in the case of one variable) or hyperplane (for multiple variables) that best describes the relationship between the dependent and independent variables.</p>

<p>Mathematically, the relationship between the dependent variable <i>y</i> and the independent variable(s) <i>X</i> is modeled as:</p>

<pre>y = β<sub>0</sub> + β<sub>1</sub>x + ϵ</pre>

<p>Where:</p>
<ul>
    <li><i>y</i> is the dependent variable (the output we are trying to predict).</li>
    <li><i>x</i> is the independent variable (the input feature).</li>
    <li>β<sub>0</sub> is the intercept (the value of <i>y</i> when <i>x = 0</i>).</li>
    <li>β<sub>1</sub> is the slope (the rate of change of <i>y</i> with respect to <i>x</i>).</li>
    <li>ϵ is the error term (the difference between the predicted and actual values).</li>
</ul>

<h1>2. Key Concepts in Linear Regression</h1>
<p><strong>Dependent vs. Independent Variables:</strong></p>
<ul>
    <li>The dependent variable <i>y</i> is the variable we are trying to predict or explain.</li>
    <li>The independent variable <i>x</i> is the variable used to make predictions about <i>y</i>.</li>
</ul>

<p><strong>Intercept (β<sub>0</sub>):</strong></p>
<p>This is the value of the dependent variable when all independent variables are zero. It is where the regression line intersects the y-axis.</p>

<p><strong>Slope (β<sub>1</sub>):</strong></p>
<p>The slope represents the change in the dependent variable for each unit change in the independent variable. It quantifies the relationship between the two variables.</p>

<p><strong>Error Term (ϵ):</strong></p>
<p>The error term accounts for the difference between the observed value of <i>y</i> and the predicted value. Ideally, the error term is normally distributed with a mean of zero.</p>

<h1>3. Simple vs. Multiple Linear Regression</h1>
<p><strong>Simple Linear Regression:</strong></p>
<p>In simple linear regression, we model the relationship between a single independent variable <i>x</i> and a dependent variable <i>y</i>. The equation for simple linear regression is:</p>

<pre>y = β<sub>0</sub> + β<sub>1</sub>x + ϵ</pre>

<p>This is appropriate when we believe that <i>y</i> is influenced by just one variable.</p>

<p><strong>Multiple Linear Regression:</strong></p>
<p>When there are multiple independent variables (i.e., more than one feature), we extend the linear regression model to account for more predictors. The equation for multiple linear regression becomes:</p>

<pre>y = β<sub>0</sub> + β<sub>1</sub>x<sub>1</sub> + β<sub>2</sub>x<sub>2</sub> + ⋯ + β<sub>n</sub>x<sub>n</sub> + ϵ</pre>

<p>Where:</p>
<ul>
    <li><i>x<sub>1</sub>, x<sub>2</sub>, ..., x<sub>n</sub></i> are the independent variables.</li>
    <li>β<sub>1</sub>, β<sub>2</sub>, ..., β<sub>n</sub> are the coefficients for each independent variable.</li>
</ul>

<h1>4. Assumptions of Linear Regression</h1>
<p>For linear regression to work well and produce valid results, the following assumptions must be met:</p>

<ul>
    <li><strong>Linearity:</strong> The relationship between the dependent variable and independent variables should be linear.</li>
    <li><strong>Independence:</strong> The residuals (errors) should be independent of each other.</li>
    <li><strong>Homoscedasticity:</strong> The variance of residuals should be constant across all levels of the independent variables.</li>
    <li><strong>Normality of Errors:</strong> The residuals should be normally distributed (for hypothesis testing and confidence intervals).</li>
</ul>
.', 1, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (32, 11, 'Logistic Regression', 
                                '<h1>Introduction to Logistic Regression</h1>

<div class="alert alert-info">
    <div class="alert-title">Prasyarat Pembelajaran</div>
    <p>Sebelum memulai course ini, pastikan Anda telah memahami dasar-dasar statistik dan pemrograman Python.</p>
</div>

<h2>1. What is Logistic Regression?</h2>

<p>Logistic Regression is a classification algorithm used to predict the probability of a binary outcome. Unlike linear regression, which predicts continuous values, logistic regression predicts probabilities that are then mapped to one of two classes (typically 0 or 1).</p>

<p>In logistic regression, the goal is to model the relationship between the input features (independent variables) and the probability of the target being 1 (or the positive class). The algorithm uses the sigmoid function to map any real-valued number into a probability between 0 and 1.</p>

<pre><code class="language-math">
𝑦 = 𝜎(𝛽₀ + 𝛽₁𝑥₁ + 𝛽₂𝑥₂ + ⋯ + 𝛽ₙ𝑥ₙ)
</code></pre>

<p>Where:</p>
<ul>
    <li><strong>y</strong> is the predicted probability of the positive class (i.e., the likelihood that the outcome is 1).</li>
    <li><strong>x₁, x₂, ..., xₙ</strong> are the input features.</li>
    <li><strong>β₀, β₁, ..., βₙ</strong> are the model coefficients (weights) that the model learns.</li>
    <li><strong>σ</strong> is the sigmoid function.</li>
</ul>

<h2>2. The Sigmoid Function and Its Role in Logistic Regression</h2>

<p>The sigmoid function, also known as the logistic function, is used in logistic regression to transform the output of the linear equation into a probability. It maps any real-valued number to a value between 0 and 1, which is ideal for classification problems.</p>

<p>The formula for the sigmoid function is:</p>

<pre><code class="language-math">
𝜎(𝑧) = 1 / (1 + e^(-𝑧))
</code></pre>

<p>Where z is the linear combination of the input features:</p>

<pre><code class="language-math">
𝑧 = 𝛽₀ + 𝛽₁𝑥₁ + 𝛽₂𝑥₂ + ⋯ + 𝛽ₙ𝑥ₙ
</code></pre>

<p>As the value of z increases (more positive), the output of the sigmoid function gets closer to 1. As z decreases (more negative), the output gets closer to 0. This allows logistic regression to output probabilities for binary classification.</p>

<p>For example, if the sigmoid function outputs a value greater than 0.5, the prediction is class 1 (positive class). Otherwise, it is class 0 (negative class).</p>

<h2>3. Interpreting the Coefficients in Logistic Regression</h2>

<p>The coefficients in logistic regression correspond to the weights of the input features. These coefficients determine the influence of each feature on the predicted probability.</p>

<p>For each coefficient βᵢ, the model interprets the effect of a one-unit change in xᵢ on the odds of the target being 1. Specifically:</p>
<ul>
    <li><strong>βᵢ</strong> is the log-odds change in the outcome for a one-unit increase in xᵢ.</li>
    <li>The exponentiated coefficient <strong>eᵇᵢ</strong> represents the odds ratio, which tells us how the odds of the outcome change with each unit increase in the feature.</li>
</ul>

<p>For example, if β₁ = 0.5, then a one-unit increase in x₁ increases the odds of the target being 1 by a factor of eᵇ₁ ≈ 1.65.</p>

<h2>4. The Logistic Loss Function (Binary Cross-Entropy)</h2>

<p>The logistic loss function, also called binary cross-entropy, is used to measure the performance of a logistic regression model. It calculates the difference between the predicted probability and the actual outcome.</p>

<p>The formula for the binary cross-entropy loss is:</p>

<pre><code class="language-math">
𝐽(𝛽) = −[𝑦 log(𝑝) + (1−𝑦) log(1−𝑝)]
</code></pre>

<p>Where:</p>
<ul>
    <li><strong>y</strong> is the true label (0 or 1),</li>
    <li><strong>p</strong> is the predicted probability of the positive class (1).</li>
</ul>

<p>The goal is to minimize this loss function during training, which is typically done using an optimization algorithm such as gradient descent. By minimizing the loss, the model adjusts its coefficients to improve the predictions.</p>

<h2>5. Gradient Descent in Logistic Regression</h2>

<p>Gradient descent is an optimization technique used to minimize the loss function by adjusting the model''s coefficients.</p>

<p>The basic idea is to compute the gradient (derivative) of the loss function with respect to each coefficient and update the coefficients in the opposite direction of the gradient to minimize the error.</p>

<p>The update rule for each coefficient βᵢ is:</p>

<pre><code class="language-math">
𝛽ᵢ := 𝛽ᵢ − α ∂𝐽 / ∂𝛽ᵢ
</code></pre>

<p>Where:</p>
<ul>
    <li><strong>α</strong> is the learning rate (the step size for each update),</li>
    <li><strong>∂𝐽 / ∂𝛽ᵢ</strong> is the gradient of the cost function with respect to the coefficient βᵢ.</li>
</ul>

<p>By iterating over the training data and applying this update rule, the model gradually improves its coefficients and learns the optimal parameters for predicting the probability of the target class.</p>

<h2>6. Implementing Logistic Regression in Python</h2>

<p>Now, let’s see how to implement logistic regression using Python and the popular machine learning library Scikit-learn. Below is an example using the Iris dataset to predict whether a flower is of a particular species (binary classification).</p>

<pre><code class="language-python">
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score

# Load data
from sklearn.datasets import load_iris
data = load_iris()
X = data.data
y = (data.target == 0).astype(int)  # Target: 1 if setosa, else 0

# Split the data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=42)

# Create and fit the logistic regression model
model = LogisticRegression()
model.fit(X_train, y_train)

# Make predictions
y_pred = model.predict(X_test)

# Evaluate the model
accuracy = accuracy_score(y_test, y_pred)
print(f"Accuracy: {accuracy}")
</code></pre>

<div class="alert alert-success">
    <div class="alert-title">Next Steps</div>
    <p>After completing this module, you can continue learning:</p>
    <ul>
        <li>Evaluating Model Performance</li>
        <li>Advanced Topics in Logistic Regression</li>
        <li>Implementing Other Machine Learning Algorithms</li>
    </ul>
</div>

<hr>

<p class="text-center">Happy learning! 🚀</p>
.', 2, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (33, 11, 'Decision Trees', 
                                '<h1>Introduction to Decision Trees</h1>

<div class="alert alert-info">
    <div class="alert-title">Prasyarat Pembelajaran</div>
    <p>Sebelum memulai course ini, pastikan Anda memiliki pemahaman dasar tentang algoritma klasifikasi dan regresi.</p>
</div>

<h2>1. What is a Decision Tree?</h2>

<p>A Decision Tree is a versatile algorithm used for both classification and regression tasks. It models data by recursively splitting it into subsets based on feature values, ultimately leading to predictions at the leaf nodes.</p>

<p>In classification, decision trees predict a class label, and in regression, they predict a continuous value. The goal is to create the simplest tree that makes accurate predictions.</p>

<h2>2. How Decision Trees Work</h2>

<p>A decision tree splits the data based on feature values at each node, choosing the feature that best separates the data. This is done using metrics like Gini impurity or Entropy (for classification) and Mean Squared Error (MSE) (for regression). The tree grows until a stopping condition (such as tree depth or minimum samples in a leaf) is met.</p>

<h2>3. Splitting Criteria</h2>

<p>The following are the main criteria for splitting nodes in a decision tree:</p>

<ul>
    <li><strong>Gini Impurity (for classification)</strong>: Measures the "impurity" of a node. A lower Gini score indicates a better split.</li>
</ul>

<pre><code class="language-math">
𝐺𝑖𝑛𝑖 = 1 − ∑𝑖=1𝐶 𝑝𝑖²
</code></pre>

<p>Where <strong>pᵢ</strong> is the probability of a class in a node.</p>

<ul>
    <li><strong>Entropy (for classification)</strong>: Measures the uncertainty in a node. The tree aims to minimize entropy.</li>
</ul>

<pre><code class="language-math">
𝐸𝑛𝑡𝑟𝑜𝑝𝑦 = −∑𝑖=1𝐶 𝑝𝑖 log₂(𝑝𝑖)
</code></pre>

<ul>
    <li><strong>Mean Squared Error (MSE) (for regression)</strong>: Measures the variance of the target variable within a node. Lower MSE indicates better splits.</li>
</ul>

<h2>4. Overfitting and Pruning</h2>

<p>Decision trees are prone to overfitting, especially with deep trees. Pruning is a technique used to reduce overfitting by removing branches that add little predictive value.</p>

<p>There are two types of pruning:</p>

<ul>
    <li><strong>Pre-pruning</strong>: Stops the tree from growing too deep by setting constraints (e.g., max depth, min samples per leaf).</li>
    <li><strong>Post-pruning</strong>: Prunes branches after the tree is fully grown by evaluating performance on a validation set.</li>
</ul>

<h2>5. Advantages and Disadvantages</h2>

<h3>Advantages:</h3>
<ul>
    <li>Easy to interpret and visualize.</li>
    <li>Handles both numerical and categorical data.</li>
    <li>No need for feature scaling.</li>
</ul>

<h3>Disadvantages:</h3>
<ul>
    <li>Prone to overfitting, especially with deep trees.</li>
    <li>Can be biased toward features with more levels.</li>
</ul>

<h2>6. Implementing Decision Trees in Python</h2>

<p>Here’s how to implement a decision tree for classification using Scikit-learn:</p>

<pre><code class="language-python">
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import train_test_split
from sklearn.datasets import load_iris
from sklearn.metrics import accuracy_score

# Load dataset
data = load_iris()
X = data.data
y = data.target

# Train-test split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=42)

# Initialize and train the model
model = DecisionTreeClassifier()
model.fit(X_train, y_train)

# Predict and evaluate
y_pred = model.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print(f"Accuracy: {accuracy}")
</code></pre>

<div class="alert alert-success">
    <div class="alert-title">Next Steps</div>
    <p>After completing this module, you can continue learning:</p>
    <ul>
        <li>Evaluating Model Performance</li>
        <li>Advanced Topics in Decision Trees</li>
        <li>Implementing Random Forests and Gradient Boosting</li>
    </ul>
</div>

<hr>

<p class="text-center">Happy learning! 🚀</p>
', 3, 
                                '2024-11-02', '2024-11-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (12, 4, 'Data Preprocessing', 
        'Learn the essential steps for preparing data for machine learning models.', 3, 
        '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (34, 12, 'Data Cleaning', 
                                '<h1>Introduction to Data Cleaning</h1>

<div class="alert alert-info">
    <div class="alert-title">Prasyarat Pembelajaran</div>
    <p>Sebelum memulai course ini, pastikan Anda memiliki pemahaman dasar tentang data science dan teknik-teknik dasar dalam analisis data.</p>
</div>

<h2>1. What is Data Cleaning?</h2>

<p>Data cleaning is the process of preparing raw data by handling missing values and outliers. This step is essential for ensuring that machine learning models receive high-quality, reliable data.</p>

<p>Proper data cleaning improves the accuracy and performance of models, as messy data can lead to incorrect insights and predictions.</p>

<h2>2. Handling Missing Values</h2>

<p>Missing data can arise for various reasons, such as errors in data collection or incomplete records. It''s important to handle missing values appropriately to prevent biased or incomplete analysis.</p>

<p>Common methods for dealing with missing values:</p>

<ul>
    <li><strong>Removing missing data:</strong> Delete rows or columns with missing values (useful when missing data is minimal).</li>
    <li><strong>Imputation:</strong> Replace missing values with an estimated value:
        <ul>
            <li><strong>Mean/Median/Mode imputation:</strong> Fill missing values with the mean (numerical data), median, or mode (categorical data) of the feature.</li>
            <li><strong>Forward/Backward Fill:</strong> Use the previous or next value in time series data.</li>
            <li><strong>Model-based imputation:</strong> Use algorithms (e.g., KNN, regression) to predict missing values.</li>
        </ul>
    </li>
</ul>

<p><strong>Example (mean imputation in Python):</strong></p>

<pre><code class="language-python">
from sklearn.impute import SimpleImputer
import pandas as pd

# Sample data
data = pd.DataFrame({''A'': [1, 2, None, 4], ''B'': [None, 2, 3, 4]})

# Impute missing values with mean
imputer = SimpleImputer(strategy=''mean'')
data_imputed = pd.DataFrame(imputer.fit_transform(data), columns=data.columns)

print(data_imputed)
</code></pre>

<h2>3. Handling Outliers</h2>

<p>Outliers are data points that significantly differ from other observations. They can distort statistical analyses and machine learning models, leading to inaccurate predictions. It''s important to detect and handle them.</p>

<p>Methods to deal with outliers:</p>

<ul>
    <li><strong>Detection:</strong> Use statistical techniques or visualization (boxplots, scatter plots) to identify outliers.</li>
    <li><strong>Z-score:</strong> Outliers are data points where the z-score (standard deviation from the mean) exceeds a threshold (e.g., |z| > 3).</li>
    <li><strong>IQR (Interquartile Range):</strong> Outliers are defined as values beyond 1.5 times the IQR below Q1 or above Q3.</li>
</ul>

<pre><code class="language-math">
Outlier range = [Q1 - 1.5 * IQR, Q3 + 1.5 * IQR]
</code></pre>

<p><strong>Handling Outliers:</strong></p>
<ul>
    <li><strong>Remove outliers:</strong> Remove rows where outliers are present (useful when outliers are erroneous).</li>
    <li><strong>Cap or Transform:</strong> Cap outliers to a certain threshold or apply transformations (e.g., log transformation) to reduce their impact.</li>
    <li><strong>Impute outliers:</strong> Replace extreme outliers with a more reasonable value (e.g., mean, median).</li>
</ul>

<p><strong>Example (IQR method in Python):</strong></p>

<pre><code class="language-python">
import pandas as pd

# Sample data
data = pd.DataFrame({''A'': [1, 2, 3, 100, 5]})

# Calculate IQR
Q1 = data[''A''].quantile(0.25)
Q3 = data[''A''].quantile(0.75)
IQR = Q3 - Q1

# Define outlier range
lower_bound = Q1 - 1.5 * IQR
upper_bound = Q3 + 1.5 * IQR

# Remove outliers
data_no_outliers = data[(data[''A''] >= lower_bound) & (data[''A''] <= upper_bound)]
print(data_no_outliers)
</code></pre>

<h2>4. Techniques for Efficient Data Cleaning</h2>

<ul>
    <li><strong>Consistency Checks:</strong> Ensure that data follows consistent formats (e.g., date formats, categorical labels).</li>
    <li><strong>Scaling/Normalization:</strong> After cleaning, scale or normalize data if needed, especially for algorithms sensitive to feature magnitude (e.g., KNN, SVM).</li>
    <li><strong>Data Transformation:</strong> Apply transformations like log, square root, or Box-Cox to stabilize variance or make distributions more normal.</li>
</ul>

<h2>5. Tools for Data Cleaning</h2>

<p>Popular Python libraries for data cleaning include:</p>

<ul>
    <li><strong>Pandas:</strong> Provides functionality for handling missing values, outliers, and various data manipulations.</li>
    <li><strong>Scikit-learn:</strong> Offers imputation methods and utilities for preprocessing data.</li>
    <li><strong>Matplotlib/Seaborn:</strong> For visualizing missing values and outliers.</li>
</ul>

<div class="alert alert-success">
    <div class="alert-title">Next Steps</div>
    <p>After completing this module, you can continue learning:</p>
    <ul>
        <li>Exploratory Data Analysis (EDA)</li>
        <li>Feature Engineering</li>
        <li>Advanced Data Preprocessing Techniques</li>
    </ul>
</div>

<hr>

<p class="text-center">Happy learning! 🚀</p>
', 1, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (35, 12, 'Feature Scaling', 
                                '<h1>Introduction to Feature Scaling</h1>

<div class="alert alert-info">
    <div class="alert-title">Prasyarat Pembelajaran</div>
    <p>Sebelum memulai topik ini, pastikan Anda memahami dasar-dasar statistik dan konsep dasar dalam data preprocessing, seperti data numerik dan distribusi data.</p>
</div>

<h2>1. What is Feature Scaling?</h2>

<p>Feature scaling is the process of adjusting the values of numerical features in your dataset so they have a consistent range or distribution. Many machine learning algorithms (e.g., KNN, SVM, gradient descent) are sensitive to the scale of the features, and improper scaling can lead to biased or poor performance.</p>

<p>Common techniques for scaling include normalization and standardization, both of which transform features to different ranges.</p>

<h2>2. Normalization (Min-Max Scaling)</h2>

<p>Normalization scales the data to a specific range, typically [0, 1]. It’s particularly useful when features have different units or ranges, ensuring that no feature dominates the learning process.</p>

<p>The formula for Min-Max normalization is:</p>

<pre><code class="language-math">
X_scaled = (X - X_min) / (X_max - X_min)
</code></pre>

<p>Where:</p>
<ul>
    <li><strong>X</strong> is the original value.</li>
    <li><strong>X_min</strong> and <strong>X_max</strong> are the minimum and maximum values of the feature.</li>
</ul>

<p><strong>Normalization is useful when:</strong></p>
<ul>
    <li>Features have different scales.</li>
    <li>You want to preserve the relationship between data points within a specific range.</li>
</ul>

<p><strong>Example (Min-Max Normalization in Python):</strong></p>

<pre><code class="language-python">
from sklearn.preprocessing import MinMaxScaler
import pandas as pd

# Sample data
data = pd.DataFrame({''A'': [1, 2, 3, 4, 5]})

# Apply Min-Max Scaling
scaler = MinMaxScaler()
data_scaled = scaler.fit_transform(data)

print(data_scaled)
</code></pre>

<h2>3. Standardization (Z-score Scaling)</h2>

<p>Standardization scales data to have a mean of 0 and a standard deviation of 1. It’s useful when the features have different units or when the data is not uniformly distributed. Standardization does not bound the values within a specific range like normalization.</p>

<p>The formula for standardization (Z-score scaling) is:</p>

<pre><code class="language-math">
X_scaled = (X - μ) / σ
</code></pre>

<p>Where:</p>
<ul>
    <li><strong>X</strong> is the original value.</li>
    <li><strong>μ</strong> is the mean of the feature.</li>
    <li><strong>σ</strong> is the standard deviation of the feature.</li>
</ul>

<p><strong>Standardization is useful when:</strong></p>
<ul>
    <li>The algorithm assumes data is normally distributed (e.g., linear regression, SVM).</li>
    <li>You want to handle outliers effectively, as standardization reduces the influence of extreme values compared to normalization.</li>
</ul>

<p><strong>Example (Z-score Standardization in Python):</strong></p>

<pre><code class="language-python">
from sklearn.preprocessing import StandardScaler
import pandas as pd

# Sample data
data = pd.DataFrame({''A'': [1, 2, 3, 4, 5]})

# Apply Standardization
scaler = StandardScaler()
data_scaled = scaler.fit_transform(data)

print(data_scaled)
</code></pre>

<h2>4. When to Use Normalization vs Standardization</h2>

<p><strong>Normalization</strong> is ideal when the features have different units and when you want the features to be on the same scale, especially when the data has a known range and is bounded.</p>

<p><strong>Standardization</strong> is more appropriate when the data follows a normal distribution or when using algorithms that assume Gaussian distribution (e.g., linear regression, logistic regression, PCA).</p>

<h2>5. Other Scaling Techniques</h2>

<p>Besides Min-Max scaling and standardization, there are other scaling techniques that may be useful in specific situations:</p>

<ul>
    <li><strong>Robust Scaling:</strong> This method uses the median and interquartile range (IQR) for scaling, making it less sensitive to outliers.</li>
    <li><strong>Formula:</strong></li>
    <pre><code class="language-math">
    X_scaled = (X - median(X)) / IQR(X)
    </code></pre>
    
    <li><strong>MaxAbs Scaling:</strong> Scales the data by dividing each feature by its maximum absolute value, keeping the data within the range [-1, 1].</li>
</ul>

<div class="alert alert-success">
    <div class="alert-title">Next Steps</div>
    <p>After completing this module, you can explore:</p>
    <ul>
        <li>Data Preprocessing Techniques for Machine Learning</li>
        <li>Feature Engineering and Selection</li>
        <li>Hyperparameter Tuning in Machine Learning Algorithms</li>
    </ul>
</div>

<hr>

<p class="text-center">Happy learning! 🚀</p>
', 2, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (36, 12, 'Feature Selection', 
                                '<h1>Introduction to Feature Selection</h1>

<div class="alert alert-info">
    <div class="alert-title">Prasyarat Pembelajaran</div>
    <p>Sebelum memulai topik ini, pastikan Anda memahami konsep dasar dalam machine learning dan teknik data preprocessing, termasuk pentingnya memilih fitur yang relevan untuk model prediktif.</p>
</div>

<h2>1. What is Feature Selection?</h2>

<p>Feature selection is the process of selecting the most relevant features (or variables) for building a predictive model. Removing irrelevant or redundant features helps improve model performance, reduce overfitting, and enhance interpretability. It is a critical part of the data preprocessing pipeline, especially when dealing with high-dimensional datasets.</p>

<p>Common feature selection techniques include filter methods, wrapper methods, and embedded methods.</p>

<h2>2. Filter Methods</h2>

<p>Filter methods assess the relevance of features based on statistical metrics without involving a machine learning algorithm. They are computationally efficient and simple to implement.</p>

<p><strong>Common filter methods:</strong></p>
<ul>
    <li><strong>Correlation:</strong> Features with high correlation to the target variable are selected, while those highly correlated with each other are discarded. Use Pearson’s correlation coefficient for continuous features or Chi-square test for categorical data.</li>
    <li><strong>Chi-square test:</strong> A statistical test used to determine the independence of a feature with the target variable in classification problems.</li>
    <li><strong>ANOVA (Analysis of Variance):</strong> Used for selecting features that differ significantly across multiple categories in classification tasks.</li>
    <li><strong>Mutual Information:</strong> Measures the dependency between two variables. Higher mutual information indicates a more relevant feature.</li>
</ul>

<p><strong>Example (using correlation for feature selection in Python):</strong></p>

<pre><code class="language-python">
import pandas as pd

# Sample data
data = pd.DataFrame({''A'': [1, 2, 3, 4, 5], ''B'': [5, 4, 3, 2, 1], ''target'': [0, 1, 0, 1, 0]})

# Calculate correlation matrix
corr_matrix = data.corr()

# Select features highly correlated with the target
selected_features = corr_matrix[''target''].sort_values(ascending=False)
print(selected_features)
</code></pre>

<h2>3. Wrapper Methods</h2>

<p>Wrapper methods evaluate feature subsets based on model performance. They involve using a machine learning algorithm to assess which feature subsets lead to the best model performance. These methods tend to be more computationally expensive but can result in better feature sets.</p>

<p><strong>Common wrapper methods:</strong></p>
<ul>
    <li><strong>Forward Selection:</strong> Starts with no features and iteratively adds the feature that improves model performance the most until no further improvement is seen.</li>
    <li><strong>Backward Elimination:</strong> Starts with all features and iteratively removes the least important feature based on model performance.</li>
    <li><strong>Recursive Feature Elimination (RFE):</strong> Recursively removes the least important features and trains the model on the remaining features until the desired number of features is reached.</li>
</ul>

<p><strong>Example (using RFE in Python):</strong></p>

<pre><code class="language-python">
from sklearn.feature_selection import RFE
from sklearn.linear_model import LogisticRegression
import pandas as pd

# Sample data
data = pd.DataFrame({''A'': [1, 2, 3, 4, 5], ''B'': [5, 4, 3, 2, 1], ''target'': [0, 1, 0, 1, 0]})
X = data[[''A'', ''B'']]
y = data[''target'']

# Fit RFE with Logistic Regression
model = LogisticRegression()
rfe = RFE(model, n_features_to_select=1)
X_rfe = rfe.fit_transform(X, y)

# Get the ranking of features
print(rfe.support_)
</code></pre>

<h2>4. Embedded Methods</h2>

<p>Embedded methods perform feature selection during the model training process. These methods are usually less computationally expensive than wrapper methods and provide a more automated way to select features.</p>

<p><strong>Common embedded methods:</strong></p>
<ul>
    <li><strong>Lasso (L1 Regularization):</strong> Lasso regression adds a penalty to the model that forces some feature coefficients to be zero, effectively selecting a subset of features.</li>
    <li><strong>Decision Trees and Random Forests:</strong> These models can be used to assess feature importance, allowing you to rank features by their contribution to the model.</li>
    <li><strong>Gradient Boosting:</strong> Like random forests, gradient boosting models also provide feature importance metrics that can be used for selection.</li>
</ul>

<p><strong>Example (using Lasso for feature selection in Python):</strong></p>

<pre><code class="language-python">
from sklearn.linear_model import Lasso
import pandas as pd

# Sample data
data = pd.DataFrame({''A'': [1, 2, 3, 4, 5], ''B'': [5, 4, 3, 2, 1], ''target'': [0, 1, 0, 1, 0]})
X = data[[''A'', ''B'']]
y = data[''target'']

# Fit Lasso regression
lasso = Lasso(alpha=0.1)
lasso.fit(X, y)

# Get feature coefficients
print(lasso.coef_)
</code></pre>

<h2>5. Feature Importance</h2>

<p>Feature importance is a technique used to rank the relative importance of features based on their contribution to the model’s prediction. It is particularly useful for tree-based models (e.g., decision trees, random forests, and gradient boosting).</p>

<p><strong>Common methods to evaluate feature importance:</strong></p>
<ul>
    <li><strong>Mean Decrease Impurity (MDI):</strong> Used by decision trees to assess how much each feature reduces the impurity at each split.</li>
    <li><strong>Permutation Importance:</strong> Measures the change in model performance when a feature’s values are randomly shuffled.</li>
</ul>

<p><strong>Example (using Random Forest for feature importance in Python):</strong></p>

<pre><code class="language-python">
from sklearn.ensemble import RandomForestClassifier
import pandas as pd

# Sample data
data = pd.DataFrame({''A'': [1, 2, 3, 4, 5], ''B'': [5, 4, 3, 2, 1], ''target'': [0, 1, 0, 1, 0]})
X = data[[''A'', ''B'']]
y = data[''target'']

# Fit Random Forest
rf = RandomForestClassifier()
rf.fit(X, y)

# Get feature importance
print(rf.feature_importances_)
</code></pre>

<div class="alert alert-success">
    <div class="alert-title">Next Steps</div>
    <p>After completing this module, consider exploring:</p>
    <ul>
        <li>Hyperparameter tuning techniques for model optimization</li>
        <li>Advanced feature engineering methods</li>
        <li>How to combine feature selection techniques with cross-validation for robust model evaluation</li>
    </ul>
</div>

<hr>

<p class="text-center">Happy learning! 🚀</p>
', 3, 
                                '2024-11-02', '2024-11-02');
INSERT INTO courses (id, name, learning_path_id, description, order_index, 
                     level, total_modules, total_enrollments, rating, estimated_duration, 
                     created_at, updated_at)
VALUES (5, 'Data Science with Python', 2, 
        'Learn Python for data science, including libraries like Pandas, NumPy, and Matplotlib.', 2, 
        'intermediate', 3, 139487, 
        4.8, 35, 
        '2024-11-02', '2024-11-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (13, 5, 'Pandas for Data Manipulation', 
        'Learn how to manipulate data using Pandas in Python.', 1, 
        '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (37, 13, 'DataFrames', 
                                '<h1>Introduction to Pandas DataFrames</h1>

<div class="alert alert-info">
    <div class="alert-title">Prasyarat Pembelajaran</div>
    <p>Pastikan Anda sudah memahami dasar-dasar Python sebelum melanjutkan ke Pandas DataFrames. Pandas adalah pustaka Python yang sangat kuat untuk manipulasi dan analisis data.</p>
</div>

<h2>1. What is a DataFrame?</h2>

<p>A DataFrame is a two-dimensional, size-mutable, and heterogeneous tabular data structure in Pandas, a powerful Python library for data manipulation and analysis. It is one of the most commonly used structures in data science, as it can hold various types of data (numeric, strings, dates) in columns and rows, similar to an Excel spreadsheet or SQL table.</p>

<p>DataFrames allow you to store and manipulate large datasets efficiently, supporting a wide range of operations, such as filtering, grouping, reshaping, and statistical analysis.</p>

<h2>2. Creating a DataFrame</h2>

<p>You can create a DataFrame in various ways, such as from:</p>
<ul>
    <li>Lists or Dictionaries.</li>
    <li>CSV files or Excel spreadsheets.</li>
    <li>Numpy arrays or other Pandas DataFrames.</li>
</ul>

<p><strong>Example 1 (Creating a DataFrame from a Dictionary):</strong></p>

<pre><code class="language-python">
import pandas as pd

# Create a DataFrame from a dictionary
data = {
    ''Name'': [''Alice'', ''Bob'', ''Charlie''],
    ''Age'': [25, 30, 35],
    ''City'': [''New York'', ''Los Angeles'', ''Chicago'']
}

df = pd.DataFrame(data)

print(df)
</code></pre>

<p><strong>Output:</strong></p>
<pre><code class="language-markdown">
      Name  Age         City
0    Alice   25     New York
1      Bob   30  Los Angeles
2  Charlie   35      Chicago
</code></pre>

<p><strong>Example 2 (Creating a DataFrame from a CSV file):</strong></p>

<pre><code class="language-python">
df = pd.read_csv(''data.csv'')  # Reads data from a CSV file
print(df.head())  # Display the first few rows
</code></pre>

<h2>3. DataFrame Structure</h2>

<p>A DataFrame is essentially a collection of Series (each column), and each Series is indexed by default, with an optional row index.</p>

<p><strong>Key attributes:</strong></p>
<ul>
    <li><strong>df.columns:</strong> Lists all the column names.</li>
    <li><strong>df.index:</strong> Shows the row index (default is a range of integers).</li>
    <li><strong>df.shape:</strong> Returns the number of rows and columns (e.g., (n_rows, n_columns)).</li>
    <li><strong>df.dtypes:</strong> Displays the data types of each column.</li>
</ul>

<p><strong>Example:</strong></p>

<pre><code class="language-python">
print(df.columns)   # Output: Index([''Name'', ''Age'', ''City''], dtype=''object'')
print(df.index)     # Output: RangeIndex(start=0, stop=3, step=1)
print(df.shape)     # Output: (3, 3)
print(df.dtypes)    # Output: Name     object, Age      int64, City     object
</code></pre>

<div class="alert alert-success">
    <div class="alert-title">Next Steps</div>
    <p>After completing this module, consider exploring:</p>
    <ul>
        <li>How to filter and select data from a DataFrame</li>
        <li>How to handle missing data in DataFrames</li>
        <li>Advanced operations like merging and joining multiple DataFrames</li>
    </ul>
</div>

<hr>

<p class="text-center">Happy coding with Pandas! 🚀</p>
', 1, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (38, 13, 'Data Filtering and Cleaning', 
                                '<h1>Introduction to Pandas DataFrames</h1>

<div class="alert alert-info">
    <div class="alert-title">Prasyarat Pembelajaran</div>
    <p>Pastikan Anda sudah memahami dasar-dasar Python sebelum melanjutkan ke Pandas DataFrames. Pandas adalah pustaka Python yang sangat kuat untuk manipulasi dan analisis data.</p>
</div>

<h2>1. What is a DataFrame?</h2>

<p>A DataFrame is a two-dimensional, size-mutable, and heterogeneous tabular data structure in Pandas, a powerful Python library for data manipulation and analysis. It is one of the most commonly used structures in data science, as it can hold various types of data (numeric, strings, dates) in columns and rows, similar to an Excel spreadsheet or SQL table.</p>

<p>DataFrames allow you to store and manipulate large datasets efficiently, supporting a wide range of operations, such as filtering, grouping, reshaping, and statistical analysis.</p>

<h2>2. Creating a DataFrame</h2>

<p>You can create a DataFrame in various ways, such as from:</p>
<ul>
    <li>Lists or Dictionaries.</li>
    <li>CSV files or Excel spreadsheets.</li>
    <li>Numpy arrays or other Pandas DataFrames.</li>
</ul>

<p><strong>Example 1 (Creating a DataFrame from a Dictionary):</strong></p>

<pre><code class="language-python">
import pandas as pd

# Create a DataFrame from a dictionary
data = {
    ''Name'': [''Alice'', ''Bob'', ''Charlie''],
    ''Age'': [25, 30, 35],
    ''City'': [''New York'', ''Los Angeles'', ''Chicago'']
}

df = pd.DataFrame(data)

print(df)
</code></pre>

<p><strong>Output:</strong></p>
<pre><code class="language-markdown">
      Name  Age         City
0    Alice   25     New York
1      Bob   30  Los Angeles
2  Charlie   35      Chicago
</code></pre>

<p><strong>Example 2 (Creating a DataFrame from a CSV file):</strong></p>

<pre><code class="language-python">
df = pd.read_csv(''data.csv'')  # Reads data from a CSV file
print(df.head())  # Display the first few rows
</code></pre>

<h2>3. DataFrame Structure</h2>

<p>A DataFrame is essentially a collection of Series (each column), and each Series is indexed by default, with an optional row index.</p>

<p><strong>Key attributes:</strong></p>
<ul>
    <li><strong>df.columns:</strong> Lists all the column names.</li>
    <li><strong>df.index:</strong> Shows the row index (default is a range of integers).</li>
    <li><strong>df.shape:</strong> Returns the number of rows and columns (e.g., (n_rows, n_columns)).</li>
    <li><strong>df.dtypes:</strong> Displays the data types of each column.</li>
</ul>

<p><strong>Example:</strong></p>

<pre><code class="language-python">
print(df.columns)   # Output: Index([''Name'', ''Age'', ''City''], dtype=''object'')
print(df.index)     # Output: RangeIndex(start=0, stop=3, step=1)
print(df.shape)     # Output: (3, 3)
print(df.dtypes)    # Output: Name     object, Age      int64, City     object
</code></pre>

<h2>4. Basic DataFrame Operations</h2>

<p>Once you have a DataFrame, you can perform a variety of operations:</p>

<p><strong>Selecting Columns:</strong></p>

<pre><code class="language-python">
df[''Age'']  # Returns the ''Age'' column as a Series
df[[''Name'', ''City'']]  # Returns multiple columns
</code></pre>

<p><strong>Selecting Rows by Index:</strong></p>

<pre><code class="language-python">
df.loc[1]  # Selects row by label (index 1, i.e., Bob''s data)
df.iloc[1]  # Selects row by integer position (index 1, same as loc)
</code></pre>

<p><strong>Filtering Rows:</strong></p>

<pre><code class="language-python">
df[df[''Age''] > 30]  # Selects rows where Age is greater than 30
</code></pre>

<p><strong>Adding a New Column:</strong></p>

<pre><code class="language-python">
df[''Country''] = [''USA'', ''USA'', ''USA'']  # Adds a new column ''Country''
</code></pre>

<p><strong>Renaming Columns:</strong></p>

<pre><code class="language-python">
df.rename(columns={''Name'': ''Full Name'', ''City'': ''Location''}, inplace=True)
</code></pre>

<h2>5. Data Cleaning with DataFrames</h2>

<p>Pandas DataFrames offer robust functionality for cleaning data, such as handling missing values, duplicates, and data type conversions.</p>

<p><strong>Handling Missing Data:</strong></p>

<ul>
    <li><strong>Drop missing values:</strong></li>
    <pre><code class="language-python">
df.dropna()  # Removes rows with missing values
</code></pre>
    <li><strong>Fill missing values:</strong></li>
    <pre><code class="language-python">
df.fillna(value={''Age'': 30})  # Replaces NaN in ''Age'' with 30
</code></pre>
</ul>

<p><strong>Removing Duplicates:</strong></p>

<pre><code class="language-python">
df.drop_duplicates()  # Removes duplicate rows
</code></pre>

<p><strong>Converting Data Types:</strong></p>

<pre><code class="language-python">
df[''Age''] = df[''Age''].astype(float)  # Converts the ''Age'' column to float
</code></pre>

<div class="alert alert-success">
    <div class="alert-title">Next Steps</div>
    <p>After completing this module, consider exploring:</p>
    <ul>
        <li>How to group data using <code>groupby()</code></li>
        <li>Handling more advanced data manipulations like merging and joining DataFrames</li>
        <li>Exploring time series data with Pandas</li>
    </ul>
</div>

<hr>

<p class="text-center">Happy coding with Pandas! 🚀</p>
', 2, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (39, 13, 'Data Aggregation', 
                                '<h1>6. DataFrame Operations for Analysis</h1>

<p>Pandas DataFrames support various functions for summarizing and analyzing data, allowing users to quickly gain insights from the data.</p>

<h2>Descriptive Statistics:</h2>
<p>Summary statistics such as mean, standard deviation, and count can be easily computed using <code>describe()</code>:</p>

<pre><code class="language-python">
df.describe()  # Summarizes statistics (mean, std, count, etc.)
</code></pre>

<h2>GroupBy:</h2>
<p>You can group data based on certain columns and apply aggregate functions (like mean, sum, etc.) on each group:</p>

<pre><code class="language-python">
df.groupby(''City'').mean()  # Groups by ''City'' and calculates the mean of each group
</code></pre>

<h2>Sorting Data:</h2>
<p>Sorting the data by columns can be done using <code>sort_values()</code>:</p>

<pre><code class="language-python">
df.sort_values(by=''Age'', ascending=False)  # Sorts DataFrame by ''Age'' in descending order
</code></pre>

<h2>Applying Functions:</h2>
<p>You can apply custom functions to columns using <code>apply()</code>. Here''s an example that increases all ages by 1:</p>

<pre><code class="language-python">
df[''Age''] = df[''Age''].apply(lambda x: x + 1)  # Increases all ages by 1
</code></pre>

<h1>7. DataFrame Indexing and Selection</h1>

<p>Pandas offers powerful indexing capabilities, allowing for more flexible and efficient data selection.</p>

<h2>Setting an Index:</h2>
<p>You can set a column as the index for easier lookup and selection:</p>

<pre><code class="language-python">
df.set_index(''Name'', inplace=True)  # Sets ''Name'' column as the index
</code></pre>

<h2>Resetting the Index:</h2>
<p>To revert back to the default integer index, use <code>reset_index()</code>:</p>

<pre><code class="language-python">
df.reset_index(inplace=True)  # Resets the index to the default integer index
</code></pre>

<h2>Slicing Data:</h2>
<p>You can slice rows and columns using <code>loc[]</code>, providing a flexible way to select portions of the DataFrame:</p>

<pre><code class="language-python">
df.loc[0:2, ''Age'':''City'']  # Slices rows 0 to 2, columns ''Age'' to ''City''
</code></pre>

<h1>8. Merging and Concatenating DataFrames</h1>

<p>Pandas allows you to combine multiple DataFrames in various ways: concatenating and merging.</p>

<h2>Concatenating DataFrames:</h2>
<p>You can concatenate DataFrames either vertically or horizontally:</p>

<pre><code class="language-python">
df1 = pd.DataFrame({''A'': [1, 2], ''B'': [3, 4]})
df2 = pd.DataFrame({''A'': [5, 6], ''B'': [7, 8]})
result = pd.concat([df1, df2], ignore_index=True)  # Concatenates DataFrames vertically
</code></pre>

<h2>Merging DataFrames:</h2>
<p>You can merge two DataFrames based on a common column, similar to SQL joins:</p>

<pre><code class="language-python">
df1 = pd.DataFrame({''ID'': [1, 2], ''Name'': [''Alice'', ''Bob'']})
df2 = pd.DataFrame({''ID'': [1, 2], ''Age'': [25, 30]})
merged_df = pd.merge(df1, df2, on=''ID'')  # Merges based on ''ID'' column
</code></pre>

<hr>

<p class="text-center">Master these techniques to efficiently manipulate and analyze data with Pandas! 🚀</p>
', 3, 
                                '2024-11-02', '2024-11-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (14, 5, 'NumPy for Numerical Computations', 
        'Learn to use NumPy for numerical computing in Python.', 2, 
        '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (40, 14, 'NumPy Arrays', 
                                '<h1>1. Introduction to NumPy Arrays</h1>

<p>NumPy (Numerical Python) is a powerful library for numerical computing in Python. At the core of NumPy is the <strong>ndarray</strong> (n-dimensional array), which is a highly efficient and flexible way to store and manipulate large datasets. NumPy arrays are faster and more memory-efficient than Python lists, especially when performing mathematical operations on large datasets.</p>

<p>NumPy arrays are <strong>homogeneous</strong>, meaning they contain elements of the same data type (e.g., integers, floats), unlike Python lists, which can store mixed data types.</p>

<h1>2. Creating NumPy Arrays</h1>

<p>You can create NumPy arrays from lists, tuples, or other data structures. Some of the common ways to create NumPy arrays include:</p>

<h3>From a Python list:</h3>
<pre><code class="language-python">
import numpy as np
arr = np.array([1, 2, 3, 4, 5])
print(arr)
</code></pre>
<p><strong>Output:</strong></p>
<pre><code class="language-csharp">
[1 2 3 4 5]
</code></pre>

<h3>From a Python list of lists (creates a 2D array):</h3>
<pre><code class="language-python">
arr_2d = np.array([[1, 2], [3, 4], [5, 6]])
print(arr_2d)
</code></pre>
<p><strong>Output:</strong></p>
<pre><code class="language-lua">
[[1 2]
 [3 4]
 [5 6]]
</code></pre>

<h3>Using <code>np.zeros</code> (creates an array filled with zeros):</h3>
<pre><code class="language-python">
zeros_arr = np.zeros((3, 3))  # 3x3 array of zeros
print(zeros_arr)
</code></pre>

<h3>Using <code>np.ones</code> (creates an array filled with ones):</h3>
<pre><code class="language-python">
ones_arr = np.ones((2, 3))  # 2x3 array of ones
print(ones_arr)
</code></pre>

<h3>Using <code>np.arange</code> (creates an array with a range of numbers):</h3>
<pre><code class="language-python">
range_arr = np.arange(0, 10, 2)  # Array of numbers from 0 to 10 with step 2
print(range_arr)
</code></pre>

<h3>Using <code>np.linspace</code> (creates an array with evenly spaced numbers):</h3>
<pre><code class="language-python">
linspace_arr = np.linspace(0, 1, 5)  # 5 equally spaced numbers between 0 and 1
print(linspace_arr)
</code></pre>

<h1>3. Array Attributes</h1>

<p>NumPy arrays come with several useful attributes to inspect and understand the array structure:</p>

<h3>Shape:</h3>
<p>Returns the dimensions of the array (rows, columns):</p>
<pre><code class="language-python">
print(arr.shape)  # Output: (5,)
print(arr_2d.shape)  # Output: (3, 2)
</code></pre>

<h3>Size:</h3>
<p>Returns the total number of elements in the array:</p>
<pre><code class="language-python">
print(arr.size)  # Output: 5
</code></pre>

<h3>Data Type:</h3>
<p>Returns the data type of the elements in the array:</p>
<pre><code class="language-python">
print(arr.dtype)  # Output: int64 (depends on platform)
</code></pre>

<h3>Dimension:</h3>
<p>Returns the number of axes (dimensions) of the array:</p>
<pre><code class="language-python">
print(arr.ndim)  # Output: 1 (1D array)
print(arr_2d.ndim)  # Output: 2 (2D array)
</code></pre>

<h3>Item Size:</h3>
<p>Returns the size (in bytes) of each element in the array:</p>
<pre><code class="language-python">
print(arr.itemsize)  # Output: 8 (for 64-bit integers)
</code></pre>

<h1>4. Array Indexing and Slicing</h1>

<p>Like Python lists, NumPy arrays support indexing and slicing to access and modify elements.</p>

<h3>Basic Indexing:</h3>
<p>You can access individual elements using indexing:</p>
<pre><code class="language-python">
arr = np.array([10, 20, 30, 40, 50])
print(arr[0])  # Output: 10 (first element)
print(arr[2])  # Output: 30 (third element)
</code></pre>

<h3>Slicing:</h3>
<p>You can slice arrays to access a range of elements:</p>
<pre><code class="language-python">
print(arr[1:4])  # Output: [20 30 40] (from index 1 to 3)
print(arr[:3])   # Output: [10 20 30] (first 3 elements)
</code></pre>

<h3>Slicing for 2D Arrays:</h3>
<p>You can slice 2D arrays in both rows and columns:</p>
<pre><code class="language-python">
arr_2d = np.array([[1, 2], [3, 4], [5, 6]])
print(arr_2d[1, 0])  # Output: 3 (row 1, column 0)
print(arr_2d[:, 1])   # Output: [2 4 6] (all rows, column 1)
</code></pre>
', 1, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (41, 14, 'Array Manipulations', 
                                '<h1>5. Array Operations</h1>

<p>NumPy arrays allow you to perform a wide range of mathematical operations element-wise. These operations are fast due to NumPy''s optimized implementation in C.</p>

<h3>Element-wise Operations:</h3>
<pre><code class="language-python">
arr1 = np.array([1, 2, 3])
arr2 = np.array([4, 5, 6])
print(arr1 + arr2)  # Output: [5 7 9] (element-wise addition)
print(arr1 - arr2)  # Output: [-3 -3 -3] (element-wise subtraction)
print(arr1 * arr2)  # Output: [4 10 18] (element-wise multiplication)
print(arr1 / arr2)  # Output: [0.25 0.4 0.5] (element-wise division)
</code></pre>

<h3>Universal Functions (ufuncs):</h3>
<p>These are NumPy functions that operate element-wise on arrays:</p>
<pre><code class="language-python">
print(np.sqrt(arr1))  # Output: [1.         1.41421356 1.73205081] (square root of each element)
print(np.exp(arr1))   # Output: [ 2.71828183  7.3890561  20.08553692] (exponentiation)
</code></pre>

<h3>Matrix Operations (for 2D arrays):</h3>
<p>Matrix operations such as dot product can be performed on 2D arrays:</p>
<pre><code class="language-python">
mat1 = np.array([[1, 2], [3, 4]])
mat2 = np.array([[5, 6], [7, 8]])

# Matrix multiplication (dot product)
print(np.dot(mat1, mat2))  # Output: [[19 22] [43 50]]
</code></pre>

<h3>Aggregration Functions:</h3>
<p>NumPy provides several aggregation functions that summarize data:</p>
<pre><code class="language-python">
arr = np.array([1, 2, 3, 4, 5])
print(np.sum(arr))   # Output: 15 (sum of elements)
print(np.mean(arr))  # Output: 3.0 (mean of elements)
print(np.min(arr))   # Output: 1 (minimum element)
print(np.max(arr))   # Output: 5 (maximum element)
</code></pre>

<h1>6. Reshaping Arrays</h1>

<p>You can change the shape of an array without changing its data using the <code>reshape()</code> method. This is particularly useful when preparing data for machine learning models.</p>

<h3>Reshaping an Array:</h3>
<p>Reshape an array to a different shape:</p>
<pre><code class="language-python">
arr = np.array([1, 2, 3, 4, 5, 6])
reshaped_arr = arr.reshape((2, 3))  # 2 rows, 3 columns
print(reshaped_arr)
</code></pre>

<h3>Flattening an Array:</h3>
<p>Convert a multi-dimensional array to a 1D array:</p>
<pre><code class="language-python">
flattened_arr = reshaped_arr.flatten()
print(flattened_arr)
</code></pre>

<h3>Transposing an Array:</h3>
<p>Swap rows and columns:</p>
<pre><code class="language-python">
transposed_arr = reshaped_arr.T  # Transposes the array
print(transposed_arr)
</code></pre>

<h1>7. Broadcasting</h1>

<p>Broadcasting allows NumPy to perform element-wise operations on arrays of different shapes, making operations more efficient without needing to manually align dimensions.</p>

<h3>Example of Broadcasting:</h3>
<p>Broadcasting a scalar to each element of the array:</p>
<pre><code class="language-python">
arr = np.array([1, 2, 3])
scalar = 5
print(arr + scalar)  # Output: [6 7 8] (scalar is broadcasted to each element of the array)
</code></pre>

<h3>Broadcasting with Arrays:</h3>
<p>Broadcasting works when arrays of different shapes are involved, aligning smaller arrays with larger ones:</p>
<pre><code class="language-python">
arr1 = np.array([[1, 2], [3, 4]])
arr2 = np.array([10, 20])
print(arr1 + arr2)  # Output: [[11 22] [13 24]] (arr2 is broadcasted to each row of arr1)
</code></pre>
', 2, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (42, 14, 'Mathematical Operations', 
                                '<h1>1. Introduction to Mathematical Operations with NumPy</h1>

<p>NumPy is a powerful library in Python designed for numerical computations. It provides a wide range of functions for performing mathematical operations on arrays. These operations can be applied element-wise, or in the case of multi-dimensional arrays, can operate on entire rows, columns, or axes.</p>

<p>In this section, we’ll explore how to use NumPy for basic mathematical, statistical, and linear algebra operations.</p>

<h1>2. Element-wise Mathematical Operations</h1>
<p>NumPy allows you to perform mathematical operations on entire arrays, applying them element by element.</p>

<h3>Addition:</h3>
<pre><code class="language-python">
import numpy as np
arr1 = np.array([1, 2, 3])
arr2 = np.array([4, 5, 6])
result = arr1 + arr2  # Element-wise addition
print(result)  # Output: [5 7 9]
</code></pre>

<h3>Subtraction:</h3>
<pre><code class="language-python">
result = arr1 - arr2  # Element-wise subtraction
print(result)  # Output: [-3 -3 -3]
</code></pre>

<h3>Multiplication:</h3>
<pre><code class="language-python">
result = arr1 * arr2  # Element-wise multiplication
print(result)  # Output: [ 4 10 18]
</code></pre>

<h3>Division:</h3>
<pre><code class="language-python">
result = arr1 / arr2  # Element-wise division
print(result)  # Output: [0.25 0.4 0.5]
</code></pre>

<h3>Exponentiation:</h3>
<pre><code class="language-python">
result = arr1 ** 2  # Element-wise squaring
print(result)  # Output: [1 4 9]
</code></pre>

<h3>Square Root:</h3>
<pre><code class="language-python">
result = np.sqrt(arr1)  # Element-wise square root
print(result)  # Output: [1.         1.41421356 1.73205081]
</code></pre>

<h1>3. Mathematical Functions in NumPy</h1>
<p>NumPy provides a variety of universal functions (ufuncs) to perform mathematical operations on arrays. These are optimized for fast performance.</p>

<h3>Trigonometric Functions:</h3>
<pre><code class="language-python">
angles = np.array([0, np.pi / 2, np.pi])
print(np.sin(angles))  # Output: [0. 1. 0.]
print(np.cos(angles))  # Output: [1. 0. -1.]
</code></pre>

<h3>Logarithmic and Exponential Functions:</h3>
<pre><code class="language-python">
arr = np.array([1, 10, 100])
print(np.log(arr))   # Natural logarithm (base e)
print(np.log10(arr))  # Logarithm base 10
print(np.exp(arr))    # Exponential (e^x)
</code></pre>

<h3>Rounding Functions:</h3>
<pre><code class="language-python">
arr = np.array([1.234, 5.678])
print(np.floor(arr))  # Output: [1. 5.]
print(np.ceil(arr))   # Output: [2. 6.]
print(np.round(arr))  # Output: [1. 6.]
</code></pre>

<h3>Absolute Value:</h3>
<pre><code class="language-python">
arr = np.array([-1, -2, 3, -4])
print(np.abs(arr))  # Output: [1 2 3 4]
</code></pre>

<h1>4. Statistical Operations with NumPy</h1>
<p>NumPy also provides many functions to perform statistical analysis on data, helping to summarize and understand datasets.</p>

<h3>Mean:</h3>
<pre><code class="language-python">
arr = np.array([1, 2, 3, 4, 5])
mean = np.mean(arr)  # Average of all elements
print(mean)  # Output: 3.0
</code></pre>

<h3>Median:</h3>
<pre><code class="language-python">
arr = np.array([1, 2, 3, 4, 5])
median = np.median(arr)  # Middle value in the dataset
print(median)  # Output: 3.0
</code></pre>

<h3>Standard Deviation:</h3>
<pre><code class="language-python">
arr = np.array([1, 2, 3, 4, 5])
std_dev = np.std(arr)  # Measures the spread of data
print(std_dev)  # Output: 1.4142135623730951
</code></pre>

<h3>Variance:</h3>
<pre><code class="language-python">
arr = np.array([1, 2, 3, 4, 5])
variance = np.var(arr)  # Square of the standard deviation
print(variance)  # Output: 2.0
</code></pre>

<h3>Sum:</h3>
<pre><code class="language-python">
arr = np.array([1, 2, 3, 4, 5])
total = np.sum(arr)  # Sum of all elements
print(total)  # Output: 15
</code></pre>

<h3>Minimum and Maximum:</h3>
<pre><code class="language-python">
arr = np.array([1, 2, 3, 4, 5])
min_val = np.min(arr)  # Minimum value in the array
max_val = np.max(arr)  # Maximum value in the array
print(min_val, max_val)  # Output: 1 5
</code></pre>

<h3>Percentiles:</h3>
<pre><code class="language-python">
arr = np.array([1, 2, 3, 4, 5])
p50 = np.percentile(arr, 50)  # Median (50th percentile)
p25 = np.percentile(arr, 25)  # 25th percentile
print(p50, p25)  # Output: 3.0 2.0
</code></pre>

<h1>5. Aggregating and Reducing Operations</h1>
<p>NumPy provides functions to perform reduction and aggregation operations, such as summing up the array values along a specific axis.</p>

<h3>Sum along an axis:</h3>
<pre><code class="language-python">
arr = np.array([[1, 2, 3], [4, 5, 6]])
row_sum = np.sum(arr, axis=1)  # Sum along each row
col_sum = np.sum(arr, axis=0)  # Sum along each column
print(row_sum)  # Output: [ 6 15]
print(col_sum)  # Output: [5 7 9]
</code></pre>

<h3>Cumulative Sum:</h3>
<pre><code class="language-python">
arr = np.array([1, 2, 3, 4])
cum_sum = np.cumsum(arr)  # Cumulative sum
print(cum_sum)  # Output: [1 3 6 10]
</code></pre>
', 3, 
                                '2024-11-02', '2024-11-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (15, 5, 'Data Visualization with Matplotlib', 
        'Learn how to visualize data using Matplotlib in Python.', 3, 
        '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (43, 15, 'Basic Plotting', 
                                '<h1>1. Introduction to Basic Plotting with Matplotlib</h1>

<p>Matplotlib is one of the most widely used libraries for creating visualizations in Python. It is highly customizable and provides functions for creating a variety of plots, including line charts, bar graphs, histograms, scatter plots, and more. This section covers the basics of creating plots using Matplotlib.</p>

<h1>2. Installing Matplotlib</h1>
<p>Before you start using Matplotlib, you need to install it. You can install it using pip:</p>

<pre><code class="language-bash">
pip install matplotlib
</code></pre>

<p>Once installed, you can import the pyplot module to create plots:</p>

<pre><code class="language-python">
import matplotlib.pyplot as plt
</code></pre>

<h1>3. Creating a Basic Line Plot</h1>
<p>The most basic plot you can create with Matplotlib is a line plot. This is useful for visualizing the relationship between two variables.</p>

<h3>Example: Plotting a Simple Line Graph:</h3>

<pre><code class="language-python">
import matplotlib.pyplot as plt

# Data for plotting
x = [1, 2, 3, 4, 5]
y = [1, 4, 9, 16, 25]

# Create a line plot
plt.plot(x, y)

# Add a title and labels
plt.title("Basic Line Plot")
plt.xlabel("X Axis")
plt.ylabel("Y Axis")

# Display the plot
plt.show()
</code></pre>

<p>This will create a simple line graph where x values are plotted on the x-axis and y values on the y-axis.</p>
', 1, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (44, 15, 'Customizing Plots', 
                                '<h1>4. Customizing Line Plots</h1>
<p>You can customize the appearance of the plot in various ways, such as changing the color, style, and width of the line.</p>

<h3>Change Line Color and Style:</h3>

<pre><code class="language-python">
plt.plot(x, y, color=''red'', linestyle=''--'', linewidth=2)
plt.show()
</code></pre>

<p><strong>color=''red'':</strong> Specifies the color of the line.<br>
<strong>linestyle=''--'':</strong> Creates a dashed line.<br>
<strong>linewidth=2:</strong> Sets the thickness of the line.</p>

<h3>Add Markers:</h3>

<pre><code class="language-python">
plt.plot(x, y, marker=''o'', markersize=8, color=''blue'')
plt.show()
</code></pre>

<p><strong>marker=''o'':</strong> Adds circular markers at each data point.<br>
<strong>markersize=8:</strong> Adjusts the size of the markers.</p>

<h1>5. Bar Plots</h1>
<p>Bar plots are useful for comparing quantities across different categories. They can be vertical or horizontal.</p>

<h3>Example: Vertical Bar Plot:</h3>

<pre><code class="language-python">
categories = [''A'', ''B'', ''C'', ''D'']
values = [3, 7, 2, 5]

plt.bar(categories, values, color=''green'')
plt.title(''Bar Plot Example'')
plt.xlabel(''Categories'')
plt.ylabel(''Values'')
plt.show()
</code></pre>

<p><strong>plt.bar():</strong> Creates a bar plot where categories are the x-axis labels and values are the heights of the bars.</p>

<h3>Example: Horizontal Bar Plot:</h3>

<pre><code class="language-python">
plt.barh(categories, values, color=''purple'')
plt.title(''Horizontal Bar Plot Example'')
plt.xlabel(''Values'')
plt.ylabel(''Categories'')
plt.show()
</code></pre>

<p><strong>plt.barh():</strong> Creates a horizontal bar plot.</p>

<h1>6. Scatter Plots</h1>
<p>Scatter plots are used to visualize the relationship between two continuous variables. Each point on the plot represents an individual data point.</p>

<h3>Example: Basic Scatter Plot:</h3>

<pre><code class="language-python">
x = [1, 2, 3, 4, 5]
y = [5, 4, 3, 2, 1]

plt.scatter(x, y, color=''orange'')
plt.title(''Scatter Plot Example'')
plt.xlabel(''X Axis'')
plt.ylabel(''Y Axis'')
plt.show()
</code></pre>

<p><strong>plt.scatter():</strong> Creates a scatter plot with x and y data points.</p>

<h3>Scatter Plot with Custom Markers:</h3>

<pre><code class="language-python">
plt.scatter(x, y, color=''purple'', marker=''^'')  # Triangle markers
plt.show()
</code></pre>

<p><strong>marker=''^'':</strong> Specifies triangle markers.</p>

<h1>7. Histograms</h1>
<p>Histograms are useful for visualizing the distribution of a dataset. They divide the data into bins and count the number of data points in each bin.</p>

<h3>Example: Basic Histogram:</h3>

<pre><code class="language-python">
data = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5]

plt.hist(data, bins=5, color=''skyblue'', edgecolor=''black'')
plt.title(''Histogram Example'')
plt.xlabel(''Data'')
plt.ylabel(''Frequency'')
plt.show()
</code></pre>

<p><strong>bins=5:</strong> Specifies the number of bins to divide the data into.<br>
<strong>edgecolor=''black'':</strong> Adds a border to each bin.</p>
', 2, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (45, 15, 'Advanced Visualization', 
                                '<h1>1. Introduction to Basic Plotting with Matplotlib</h1>
<p>Matplotlib is one of the most widely used libraries for creating visualizations in Python. It is highly customizable and provides functions for creating a variety of plots, including line charts, bar graphs, histograms, scatter plots, and more. This section covers the basics of creating plots using Matplotlib.</p>

<h1>2. Installing Matplotlib</h1>
<p>Before you start using Matplotlib, you need to install it. You can install it using pip:</p>

<pre><code class="language-bash">
pip install matplotlib
</code></pre>

<p>Once installed, you can import the pyplot module to create plots:</p>

<pre><code class="language-python">
import matplotlib.pyplot as plt
</code></pre>

<h1>3. Creating a Basic Line Plot</h1>
<p>The most basic plot you can create with Matplotlib is a line plot. This is useful for visualizing the relationship between two variables.</p>

<h3>Example: Plotting a Simple Line Graph:</h3>

<pre><code class="language-python">
import matplotlib.pyplot as plt

# Data for plotting
x = [1, 2, 3, 4, 5]
y = [1, 4, 9, 16, 25]

# Create a line plot
plt.plot(x, y)

# Add a title and labels
plt.title("Basic Line Plot")
plt.xlabel("X Axis")
plt.ylabel("Y Axis")

# Display the plot
plt.show()
</code></pre>

<p>This will create a simple line graph where x values are plotted on the x-axis and y values on the y-axis.</p>

<h1>4. Customizing Line Plots</h1>
<p>You can customize the appearance of the plot in various ways, such as changing the color, style, and width of the line.</p>

<h3>Change Line Color and Style:</h3>

<pre><code class="language-python">
plt.plot(x, y, color=''red'', linestyle=''--'', linewidth=2)
plt.show()
</code></pre>

<p><strong>color=''red'':</strong> Specifies the color of the line.<br>
<strong>linestyle=''--'':</strong> Creates a dashed line.<br>
<strong>linewidth=2:</strong> Sets the thickness of the line.</p>

<h3>Add Markers:</h3>

<pre><code class="language-python">
plt.plot(x, y, marker=''o'', markersize=8, color=''blue'')
plt.show()
</code></pre>

<p><strong>marker=''o'':</strong> Adds circular markers at each data point.<br>
<strong>markersize=8:</strong> Adjusts the size of the markers.</p>

<h1>5. Bar Plots</h1>
<p>Bar plots are useful for comparing quantities across different categories. They can be vertical or horizontal.</p>

<h3>Example: Vertical Bar Plot:</h3>

<pre><code class="language-python">
categories = [''A'', ''B'', ''C'', ''D'']
values = [3, 7, 2, 5]

plt.bar(categories, values, color=''green'')
plt.title(''Bar Plot Example'')
plt.xlabel(''Categories'')
plt.ylabel(''Values'')
plt.show()
</code></pre>

<p><strong>plt.bar():</strong> Creates a bar plot where categories are the x-axis labels and values are the heights of the bars.</p>

<h3>Example: Horizontal Bar Plot:</h3>

<pre><code class="language-python">
plt.barh(categories, values, color=''purple'')
plt.title(''Horizontal Bar Plot Example'')
plt.xlabel(''Values'')
plt.ylabel(''Categories'')
plt.show()
</code></pre>

<p><strong>plt.barh():</strong> Creates a horizontal bar plot.</p>

<h1>6. Scatter Plots</h1>
<p>Scatter plots are used to visualize the relationship between two continuous variables. Each point on the plot represents an individual data point.</p>

<h3>Example: Basic Scatter Plot:</h3>

<pre><code class="language-python">
x = [1, 2, 3, 4, 5]
y = [5, 4, 3, 2, 1]

plt.scatter(x, y, color=''orange'')
plt.title(''Scatter Plot Example'')
plt.xlabel(''X Axis'')
plt.ylabel(''Y Axis'')
plt.show()
</code></pre>

<p><strong>plt.scatter():</strong> Creates a scatter plot with x and y data points.</p>

<h3>Scatter Plot with Custom Markers:</h3>

<pre><code class="language-python">
plt.scatter(x, y, color=''purple'', marker=''^'')  # Triangle markers
plt.show()
</code></pre>

<p><strong>marker=''^'':</strong> Specifies triangle markers.</p>

<h1>7. Histograms</h1>
<p>Histograms are useful for visualizing the distribution of a dataset. They divide the data into bins and count the number of data points in each bin.</p>

<h3>Example: Basic Histogram:</h3>

<pre><code class="language-python">
data = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5]

plt.hist(data, bins=5, color=''skyblue'', edgecolor=''black'')
plt.title(''Histogram Example'')
plt.xlabel(''Data'')
plt.ylabel(''Frequency'')
plt.show()
</code></pre>

<p><strong>bins=5:</strong> Specifies the number of bins to divide the data into.<br>
<strong>edgecolor=''black'':</strong> Adds a border to each bin.</p>

<h1>8. Subplots</h1>
<p>Matplotlib allows you to create multiple plots in a single figure using subplots.</p>

<h3>Example: Multiple Subplots:</h3>

<pre><code class="language-python">
x = [1, 2, 3, 4, 5]
y1 = [1, 4, 9, 16, 25]
y2 = [25, 20, 15, 10, 5]

fig, (ax1, ax2) = plt.subplots(1, 2)  # 1 row, 2 columns

ax1.plot(x, y1, color=''blue'')
ax1.set_title(''Plot 1: Line Plot'')

ax2.plot(x, y2, color=''red'')
ax2.set_title(''Plot 2: Line Plot'')

plt.show()
</code></pre>

<p><strong>fig, (ax1, ax2) = plt.subplots():</strong> Creates a figure with multiple axes (subplots).<br>
<strong>ax1 and ax2:</strong> Individual axes for each plot.</p>

<h1>9. Customizing Plots</h1>
<p>Matplotlib provides extensive options to customize your plots, including adding titles, labels, grid lines, legends, and more.</p>

<h3>Adding Title, Labels, and Grid:</h3>

<pre><code class="language-python">
x = [1, 2, 3, 4, 5]
y = [2, 3, 5, 7, 11]

plt.plot(x, y, color=''blue'')

plt.title(''Customized Plot'')
plt.xlabel(''X Axis'')
plt.ylabel(''Y Axis'')
plt.grid(True)  # Add gridlines

plt.show()
</code></pre>

<h3>Adding a Legend:</h3>

<pre><code class="language-python">
x = [1, 2, 3, 4, 5]
y1 = [1, 2, 3, 4, 5]
y2 = [5, 4, 3, 2, 1]

plt.plot(x, y1, label=''Line 1'', color=''blue'')
plt.plot(x, y2, label=''Line 2'', color=''red'')
plt.legend()  # Display legend

plt.show()
</code></pre>

<p><strong>label:</strong> Adds labels to the lines.<br>
<strong>plt.legend():</strong> Displays the legend.</p>

<h1>10. Saving Plots</h1>
<p>Once you create a plot, you can save it to a file (e.g., PNG, JPG, PDF) for later use.</p>

<h3>Example: Saving a Plot:</h3>

<pre><code class="language-python">
plt.plot(x, y1, label=''Line 1'', color=''blue'')
plt.xlabel(''X Axis'')
plt.ylabel(''Y Axis'')
plt.title(''Saved Plot'')

plt.savefig(''my_plot.png'')  # Save as PNG file
</code></pre>

<p><strong>plt.savefig():</strong> Saves the plot to a file.</p>
', 3, 
                                '2024-11-02', '2024-11-02');
INSERT INTO courses (id, name, learning_path_id, description, order_index, 
                     level, total_modules, total_enrollments, rating, estimated_duration, 
                     created_at, updated_at)
VALUES (6, 'Introduction to Neural Networks', 2, 
        'Learn the basics of neural networks and how they are used in machine learning.', 3, 
        'advanced', 3, 115723, 
        4.83, 75, 
        '2024-11-02', '2024-11-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (16, 6, 'Neural Network Architecture', 
        'Learn the basic architecture of neural networks.', 1, 
        '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (46, 16, 'Neurons and Layers', 
                                '<h1>1. Introduction to Neurons and Layers in Neural Networks</h1>
<p>Neural networks are the backbone of many machine learning and deep learning models. They are composed of interconnected layers of nodes called neurons. Understanding the structure and function of neurons and layers is key to grasping how neural networks learn and make predictions.</p>

<h1>2. The Basic Building Block: The Neuron</h1>
<p>A neuron in a neural network is a computational unit that takes one or more inputs, processes them, and produces an output. The basic function of a neuron can be understood as a mathematical model that mimics the way biological neurons work.</p>

<h2>Neuron Structure:</h2>
<p>Each neuron has the following components:</p>
<ul>
    <li><strong>Input:</strong> The inputs are the data or features passed to the neuron. For a simple neural network, these could be values like pixel intensities, numerical values, etc.</li>
    <li><strong>Weights (w):</strong> Each input is assigned a weight, which determines the importance of that input to the neuron. These weights are learned during training.</li>
    <li><strong>Bias (b):</strong> A bias term is added to the weighted sum of the inputs. This helps the model learn better by shifting the activation function.</li>
    <li><strong>Activation Function:</strong> After computing the weighted sum of the inputs and adding the bias, the neuron passes the result through an activation function. This function introduces non-linearity into the model, enabling it to learn more complex patterns. Common activation functions include the sigmoid, ReLU (Rectified Linear Unit), and tanh.</li>
</ul>

<h2>The Mathematical Expression of a Neuron:</h2>
<p>The mathematical model of a neuron can be written as:</p>

<p><strong>y = Activation(∑<sub>i=1</sub><sup>n</sup> (x<sub>i</sub> ⋅ w<sub>i</sub>) + b)</strong></p>

<p>Where:</p>
<ul>
    <li><strong>x<sub>i</sub>:</strong> The inputs to the neuron.</li>
    <li><strong>w<sub>i</sub>:</strong> The corresponding weights for each input.</li>
    <li><strong>b:</strong> The bias term.</li>
    <li>The sum of (x<sub>i</sub> ⋅ w<sub>i</sub>) is passed through the activation function to produce the output y.</li>
</ul>
', 1, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (47, 16, 'Activation Functions', 
                                '<h1>3. Types of Activation Functions</h1>
<p>The activation function determines how the output of a neuron is calculated from its input. Some common activation functions are:</p>

<h2>Sigmoid:</h2>
<p>Maps input values to a range between 0 and 1. Often used in binary classification problems.</p>
<p><strong>σ(x) = 1 / (1 + e<sup>-x</sup>)</strong></p>

<h2>ReLU (Rectified Linear Unit):</h2>
<p>A non-linear activation function that outputs 0 if the input is negative and the input itself if it is positive. ReLU is commonly used in deep learning models because of its efficiency and ability to combat vanishing gradients.</p>
<p><strong>ReLU(x) = max(0, x)</strong></p>

<h2>Tanh:</h2>
<p>Similar to the sigmoid function but maps the input to a range between -1 and 1.</p>
<p><strong>tanh(x) = (e<sup>x</sup> - e<sup>-x</sup>) / (e<sup>x</sup> + e<sup>-x</sup>)</strong></p>

<p>Each activation function introduces a different type of non-linearity, which is essential for the neural network to learn complex patterns in the data.</p>

<h1>4. Layers in Neural Networks</h1>
<p>A neural network consists of layers of neurons that work together to process and transform the input data. Layers can be classified into three types:</p>

<h2>1. Input Layer</h2>
<p>The input layer is the first layer of the neural network, where the raw data enters the model. Each neuron in the input layer represents one feature of the input data. For example, in an image classification problem, each pixel of the image might correspond to one neuron in the input layer.</p>

<h2>2. Hidden Layers</h2>
<p>The hidden layers are intermediate layers between the input and output layers. These layers perform computations using neurons, and their purpose is to learn complex representations of the data. A neural network can have one or more hidden layers. The number of hidden layers and the number of neurons in each hidden layer are hyperparameters that affect the performance of the model.</p>
<p>Each neuron in a hidden layer takes input from the previous layer, performs a weighted sum, applies the activation function, and passes the output to the next layer.</p>

<h2>3. Output Layer</h2>
<p>The output layer produces the final predictions of the neural network. The number of neurons in the output layer depends on the specific task. For example:</p>
<ul>
    <li>In a binary classification problem, there will typically be one neuron in the output layer.</li>
    <li>In multi-class classification, there will be as many neurons in the output layer as there are classes, with each neuron representing a probability of belonging to a class.</li>
</ul>
<p>The activation function used in the output layer depends on the task:</p>
<ul>
    <li><strong>Sigmoid:</strong> For binary classification.</li>
    <li><strong>Softmax:</strong> For multi-class classification, as it produces a probability distribution over all possible classes.</li>
</ul>
', 2, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (48, 16, 'Feedforward Network', 
                                '<h1>5. Forward Propagation</h1>
<p>Forward propagation refers to the process of passing the input data through the layers of the neural network to obtain the output. Here''s how it works:</p>

<ul>
    <li><strong>Input Layer:</strong> Data is passed into the input layer, which represents the features of the dataset.</li>
    <li><strong>Hidden Layers:</strong> The data is then processed through one or more hidden layers. Each hidden layer computes the weighted sum of its inputs, applies the activation function, and passes the result to the next layer.</li>
    <li><strong>Output Layer:</strong> Finally, the processed data reaches the output layer, which produces the prediction.</li>
</ul>

<h1>6. Example: A Simple Neural Network</h1>
<p>Consider a neural network with 1 input layer, 1 hidden layer, and 1 output layer. Here''s how the data flows:</p>

<ul>
    <li><strong>Input Layer:</strong> Assume we have 2 input features, <em>x<sub>1</sub></em> and <em>x<sub>2</sub></em>.</li>
    <li><strong>Hidden Layer:</strong> The hidden layer has 3 neurons, each with its own set of weights and bias. The output from this layer is passed through an activation function.</li>
    <li><strong>Output Layer:</strong> The output layer has 1 neuron, which produces the final prediction.</li>
</ul>

<p>Mathematically, the output for each layer can be computed as:</p>

<h2>Hidden Layer:</h2>
<p><strong>z<sub>1</sub> = w<sub>1</sub> ⋅ x<sub>1</sub> + w<sub>2</sub> ⋅ x<sub>2</sub> + b<sub>1</sub></strong></p>
<p><strong>a<sub>1</sub> = Activation(z<sub>1</sub>)</strong></p>

<h2>Output Layer:</h2>
<p><strong>z<sub>2</sub> = w<sub>3</sub> ⋅ a<sub>1</sub> + b<sub>2</sub></strong></p>
<p><strong>y = Activation(z<sub>2</sub>)</strong></p>

<h1>7. Backpropagation and Training the Network</h1>
<p>Once the neural network has made a prediction, it is evaluated using a loss function (e.g., Mean Squared Error or Cross-Entropy). The difference between the predicted output and the actual target is used to compute the error.</p>

<p>Backpropagation is a method used to adjust the weights and biases of the network based on the error. It works by propagating the error backward through the network, adjusting the parameters using an optimization technique like gradient descent.</p>
', 3, 
                                '2024-11-02', '2024-11-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (17, 6, 'Backpropagation', 
        'Learn about backpropagation and how it is used to train neural networks.', 2, 
        '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (49, 17, 'Backpropagation Overview', 
                                '<h1>1. Introduction to Backpropagation</h1>
<p>Backpropagation is a key algorithm used to train neural networks. It is responsible for updating the weights and biases of a network by propagating the error backward from the output layer to the input layer. This process allows the network to adjust its parameters (weights and biases) in order to minimize the error and improve its predictions. Backpropagation is an essential part of training a neural network using the gradient descent optimization method.</p>

<h1>2. How Backpropagation Works</h1>
<p>Backpropagation involves two key phases: Forward Propagation and Backward Propagation. Here''s a step-by-step breakdown of how it works.</p>

<h2>1. Forward Propagation:</h2>
<ul>
    <li><strong>Input:</strong> The input data is passed through the neural network, starting from the input layer, moving through the hidden layers, and reaching the output layer.</li>
    <li><strong>Prediction:</strong> Each neuron in the network performs a weighted sum of its inputs, applies an activation function, and passes the output to the next layer. This continues until the output layer produces a prediction.</li>
</ul>

<h2>2. Loss Calculation:</h2>
<p>The difference between the predicted output and the true target (actual label) is computed using a loss function. The loss function quantifies how far the model''s predictions are from the true values. Common loss functions include:</p>
<ul>
    <li><strong>Mean Squared Error (MSE)</strong> for regression tasks.</li>
    <li><strong>Cross-Entropy Loss</strong> for classification tasks.</li>
</ul>
<p>The goal of training is to minimize the loss function, which corresponds to minimizing the error between the predicted and actual outputs.</p>

<h2>3. Backward Propagation:</h2>
<p>This is where the magic of backpropagation happens. The error is propagated backward through the network, and the gradients of the loss function with respect to the weights and biases are computed.</p>

<ul>
    <li><strong>Gradient Calculation:</strong> The gradients are calculated using the chain rule of calculus, which allows us to find how much each weight and bias contributed to the error. These gradients tell us how to adjust the weights and biases to reduce the error.</li>
    <li><strong>Error Propagation:</strong> The error is propagated backward from the output layer to the input layer. This is done by calculating the derivative of the loss function with respect to the weights and biases of each layer, updating them accordingly.</li>
    <li><strong>Weight Update:</strong> The weights and biases are updated using an optimization algorithm like gradient descent. In gradient descent, the weights are adjusted in the opposite direction of the gradient, by a certain learning rate.</li>
</ul>
', 1, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (50, 17, 'Gradient Descent', 
                                '<h1>3. Mathematical Formulation</h1>
<p>Let’s break down the math involved in backpropagation:</p>

<h2>1. Loss Function:</h2>
<p>The first step in backpropagation is to compute the loss (error) using a loss function <em>L(y, y^)</em>, where <em>y</em> is the true value and <em>y^</em> is the predicted value.</p>
<p>For example, in a regression task, the Mean Squared Error (MSE) loss is calculated as:</p>
<pre>
L = (1/2) * (y - y^)²
</pre>
<p>In a classification task, the Cross-Entropy Loss is often used.</p>

<h2>2. Gradient of the Loss:</h2>
<p>Next, we compute the gradient of the loss function with respect to each weight and bias in the network. This involves calculating the partial derivatives of the loss function with respect to the weights and biases. The gradient tells us how much a small change in the weights will affect the loss.</p>

<p>Let’s take the example of a simple 2-layer neural network:</p>
<ul>
    <li><strong>Output Layer:</strong> The output of the network is <em>y^</em>.</li>
    <li><strong>Hidden Layer:</strong> The output of the hidden layer is <em>h</em>.</li>
    <li>The weights and biases are denoted by <em>w</em> and <em>b</em>.</li>
</ul>
<p>Using the chain rule, we compute the gradients as follows:</p>

<p>First, calculate the gradient of the loss with respect to the output layer:</p>
<pre>
∂L / ∂y^ = y^ - y
</pre>

<p>Then, calculate the gradient of the loss with respect to the weights of the output layer:</p>
<pre>
∂L / ∂w2 = (∂L / ∂y^) * (∂y^ / ∂w2)
</pre>

<p>For the hidden layer, we propagate the gradient backward using the chain rule to calculate the gradients of the hidden layer weights:</p>
<pre>
∂L / ∂w1 = (∂L / ∂y^) * (∂y^ / ∂h) * (∂h / ∂w1)
</pre>
<p>The process of backpropagation continues layer by layer, calculating the gradient for each weight and bias in the network.</p>

<h2>3. Gradient Descent:</h2>
<p>Once the gradients are computed, the weights and biases are updated using an optimization technique like gradient descent:</p>
<pre>
w = w - η * (∂L / ∂w)
</pre>
<pre>
b = b - η * (∂L / ∂b)
</pre>

<p>Here:</p>
<ul>
    <li><strong>η (eta):</strong> The learning rate, which controls the step size in the gradient descent process.</li>
    <li><strong>∂L / ∂w:</strong> The gradient of the loss function with respect to the weights.</li>
    <li><strong>∂L / ∂b:</strong> The gradient of the loss function with respect to the biases.</li>
</ul>

<h2>4. Key Steps in Backpropagation:</h2>
<ol>
    <li><strong>Initialize Weights and Biases:</strong> Start with random initial values for the weights and biases.</li>
    <li><strong>Forward Propagation:</strong> Pass the input data through the network and compute the predictions.</li>
    <li><strong>Compute the Loss:</strong> Calculate the error between the predicted output and the true target using a loss function.</li>
    <li><strong>Backward Propagation:</strong>
        <ul>
            <li>Calculate the gradients of the loss function with respect to the weights and biases using the chain rule.</li>
            <li>Propagate the error backward from the output layer to the input layer.</li>
        </ul>
    </li>
    <li><strong>Update Weights and Biases:</strong> Adjust the weights and biases using gradient descent to minimize the loss.</li>
    <li><strong>Repeat:</strong> Repeat the forward and backward propagation steps for many iterations (epochs) until the network converges to an optimal solution.</li>
</ol>

<h2>5. The Role of Backpropagation in Neural Networks:</h2>
<ul>
    <li><strong>Learning:</strong> Backpropagation is the process by which the neural network learns. By updating the weights and biases in each iteration, the network becomes better at making accurate predictions.</li>
    <li><strong>Optimization:</strong> It allows the network to optimize the parameters in such a way that the loss function is minimized, improving the performance of the model.</li>
    <li><strong>Efficiency:</strong> Backpropagation is an efficient algorithm that enables the training of deep neural networks by allowing the error to be propagated backward through many layers, even in very deep networks.</li>
</ul>

<h2>6. Challenges and Solutions:</h2>
<ul>
    <li><strong>Vanishing Gradients:</strong> In very deep networks, gradients can become very small, which makes it hard for the network to learn. This is known as the vanishing gradient problem. Solutions include using activation functions like ReLU and He initialization for weights.</li>
    <li><strong>Exploding Gradients:</strong> Gradients can become very large, causing instability during training. This can be mitigated by gradient clipping and careful weight initialization.</li>
</ul>
', 2, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (51, 17, 'Learning Rate', 
                                '<h1>1. Introduction to Learning Rate</h1>
<p>The learning rate is a hyperparameter in machine learning and deep learning that controls how much to change the model’s weights with respect to the loss gradient during each step of the optimization process. Specifically, it determines the size of the step taken in the direction of the gradient during gradient descent (or its variants like stochastic gradient descent).</p>
<p>The learning rate plays a crucial role in training neural networks, influencing both the speed and quality of convergence to a minimum in the loss function.</p>

<h1>2. Impact of Learning Rate on Training</h1>
<p>The learning rate has a direct impact on the optimization process. If it''s too small, the network might take a long time to converge, and if it''s too large, it might overshoot the optimal point and even lead to divergence.</p>

<p>Here’s a breakdown of how different learning rates affect training:</p>

<h2>1. Small Learning Rate:</h2>
<ul>
    <li><strong>Slow Convergence:</strong> A very small learning rate means the network takes tiny steps in the direction of the gradient. This can lead to a slow convergence, requiring many iterations (or epochs) to reach the minimum of the loss function.</li>
    <li><strong>Risk of Getting Stuck:</strong> A small learning rate might prevent the network from escaping local minima or saddle points, especially in complex networks with multiple local minima.</li>
    <li><strong>Precision:</strong> The network will make small, gradual changes to weights, which could be beneficial for fine-tuning a model once it''s already close to the optimal solution.</li>
</ul>
<p><strong>Pros:</strong></p>
<ul>
    <li>More precise adjustments, particularly in later stages of training.</li>
</ul>
<p><strong>Cons:</strong></p>
<ul>
    <li>Very slow learning, often requiring more epochs and computational resources.</li>
</ul>

<h2>2. Large Learning Rate:</h2>
<ul>
    <li><strong>Fast but Risky:</strong> A large learning rate makes large updates to the weights, which might help the model converge faster initially, but it can cause the network to overshoot the optimal point.</li>
    <li><strong>Divergence:</strong> If the learning rate is too large, the weights can oscillate around the optimal value and may not converge at all. Instead of minimizing the loss, the optimization process may cause the loss to increase over time.</li>
    <li><strong>Instability:</strong> Large learning rates can make the model''s training unstable and lead to inconsistent results.</li>
</ul>
<p><strong>Pros:</strong></p>
<ul>
    <li>Faster convergence, especially in the early stages of training.</li>
</ul>
<p><strong>Cons:</strong></p>
<ul>
    <li>May lead to overshooting and unstable training.</li>
    <li>The network may fail to converge to the optimal solution.</li>
</ul>

<h2>3. Optimal Learning Rate:</h2>
<ul>
    <li><strong>Convergence to Global Minimum:</strong> An optimal learning rate allows the network to converge efficiently while avoiding overshooting or stagnation. It''s large enough to speed up training but small enough to prevent instability.</li>
    <li><strong>Balanced Updates:</strong> The right learning rate leads to steady, controlled updates to the weights, allowing the model to learn effectively.</li>
</ul>
<p><strong>Pros:</strong></p>
<ul>
    <li>Balanced convergence.</li>
    <li>Faster training without overshooting.</li>
</ul>
<p><strong>Cons:</strong></p>
<ul>
    <li>Determining the optimal learning rate can require experimentation.</li>
</ul>

<h1>3. How to Choose the Learning Rate</h1>
<p>Choosing the right learning rate is a critical step in training neural networks. Here are some techniques to help choose an appropriate learning rate:</p>

<h2>1. Manual Tuning:</h2>
<ul>
    <li><strong>Grid Search:</strong> One common method is to manually test different learning rates and observe the training performance. You can experiment with a range of values, typically starting from values like 10<sup>-1</sup>, 10<sup>-2</sup>, and 10<sup>-3</sup>, and adjusting based on performance.</li>
    <li><strong>Learning Rate Schedules:</strong> Some practitioners use a learning rate schedule to adjust the learning rate over time. This can include:
        <ul>
            <li><strong>Step Decay:</strong> Gradually reduce the learning rate at fixed intervals.</li>
            <li><strong>Exponential Decay:</strong> Decrease the learning rate exponentially over time.</li>
            <li><strong>Cosine Annealing:</strong> Start with a high learning rate and gradually decrease it in a cosine curve.</li>
        </ul>
    </li>
</ul>

<h2>2. Learning Rate Finder:</h2>
<p>This is a more advanced technique where you start with a very small learning rate and gradually increase it during training. You then plot the loss against the learning rate to identify a "sweet spot" where the loss decreases the most rapidly. Once you find this range, you can select a learning rate within that region.</p>

<h2>3. Learning Rate Schedulers:</h2>
<p>Some modern optimizers (e.g., Adam, RMSprop) have built-in learning rate schedules that adjust the learning rate automatically during training. For example, the Adam optimizer adjusts the learning rate based on estimates of first and second moments of the gradients.</p>

<h2>4. Adaptive Learning Rate:</h2>
<p>Some algorithms, like Adagrad, RMSprop, and Adam, adapt the learning rate based on the gradient information at each step. This means the learning rate can be larger when the gradient is small and smaller when the gradient is large, potentially speeding up convergence and improving training stability.</p>
', 3, 
                                '2024-11-02', '2024-11-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (18, 6, 'Convolutional Neural Networks (CNNs)', 
        'Learn about CNNs and their applications in computer vision.', 3, 
        '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (52, 18, 'What is CNN?', 
                                '<h1>1. Introduction to Convolutional Neural Networks (CNNs)</h1>
<p>A Convolutional Neural Network (CNN) is a specialized type of deep neural network designed for processing data with a grid-like structure, such as images. CNNs have been highly successful in tasks like image classification, object detection, facial recognition, and many other computer vision applications. The core advantage of CNNs is their ability to automatically detect and learn spatial hierarchies in data without the need for manual feature extraction.</p>
<p>CNNs are inspired by the visual processing mechanisms in the human brain, where neurons in the visual cortex are responsive to specific regions of the visual field, and they work together to recognize patterns in the images we see.</p>

<h1>2. Key Components of a CNN</h1>
<p>A CNN consists of several layers that transform input data (such as an image) into useful features. The main layers in a typical CNN include:</p>

<h2>1. Convolutional Layer:</h2>
<p>The core operation in CNNs is convolution, which involves a mathematical operation where a small filter (also known as a kernel) slides across the input data (such as an image). This filter detects local patterns, such as edges, textures, or simple shapes.</p>
<p><strong>Convolution Operation:</strong> The filter performs a dot product between its weights and the input image patch, producing a feature map that highlights regions of the image that match the filter’s learned features.</p>
<p><strong>Purpose:</strong> The convolution layer helps the network learn spatial features, such as edges, corners, and textures, that are important for image recognition.</p>
<p><strong>Example:</strong> In an image of a cat, early convolutional layers might learn to detect edges or color gradients, while later layers might detect higher-level features like fur patterns or shapes.</p>

<h2>2. ReLU (Rectified Linear Unit) Layer:</h2>
<p>After the convolution operation, a ReLU activation function is typically applied to introduce non-linearity to the network. This is important because without non-linearity, a CNN would essentially be a linear transformation, limiting its ability to learn complex patterns.</p>
<p><strong>ReLU Function:</strong> <code>ReLU(x) = max(0, x)</code>, meaning it outputs the input if it’s positive and zero if it''s negative.</p>
<p><strong>Purpose:</strong> Introduces non-linearity into the network, enabling it to learn complex patterns.</p>

<h2>3. Pooling (Subsampling) Layer:</h2>
<p>Pooling is used to reduce the spatial dimensions (height and width) of the feature maps while retaining important information. The most common type of pooling is max pooling, where the maximum value from a specific region of the feature map is selected.</p>
<p>Pooling layers help reduce the computational complexity, control overfitting, and improve the model’s generalization ability.</p>
<p><strong>Types of Pooling:</strong></p>
<ul>
    <li><strong>Max Pooling:</strong> Takes the maximum value from each patch of the feature map.</li>
    <li><strong>Average Pooling:</strong> Computes the average value from each patch of the feature map.</li>
</ul>
<p><strong>Purpose:</strong> Reduces dimensionality and computational load, while retaining important features.</p>

<h2>4. Fully Connected (FC) Layer:</h2>
<p>After several convolutional and pooling layers, the CNN typically includes one or more fully connected layers (dense layers), where each neuron is connected to every neuron in the previous layer. These layers perform high-level reasoning by combining features learned in earlier layers.</p>
<p>The fully connected layers are typically used for classification tasks, where the final output is a probability distribution over different classes.</p>
<p><strong>Purpose:</strong> Combines features extracted in previous layers and maps them to the output space (e.g., class labels).</p>

<h2>5. Softmax Layer:</h2>
<p>In the final layer, a softmax function is often applied to output a probability distribution over the different possible classes (in classification problems).</p>
<p>The softmax function ensures that the sum of the output probabilities is 1, which allows us to interpret the output as a probability for each class.</p>
', 1, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (53, 18, 'Convolutional Layers', 
                                '<h1>3. How CNNs Work</h1>
<p>CNNs operate by learning filters (also called kernels) that capture different features at various levels of abstraction. The layers of the network work together in the following manner:</p>
<ul>
    <li><strong>Early Layers (Convolution + ReLU):</strong> Detect low-level features such as edges, textures, and simple shapes.</li>
    <li><strong>Intermediate Layers (Convolution + ReLU):</strong> Combine low-level features to detect more complex patterns, like parts of objects (e.g., eyes or wheels).</li>
    <li><strong>Later Layers (Convolution + ReLU):</strong> Detect high-level concepts like objects or specific patterns (e.g., a cat’s face or a car).</li>
    <li><strong>Fully Connected Layer:</strong> Combine these high-level features for final prediction (e.g., classifying the image as a "cat" or "dog").</li>
    <li><strong>Output:</strong> Use a softmax function to output probabilities for each possible class.</li>
</ul>

<h1>4. Advantages of CNNs</h1>
<ul>
    <li><strong>Automatic Feature Extraction:</strong> Unlike traditional machine learning techniques where features have to be manually engineered, CNNs can automatically learn relevant features directly from raw data (e.g., pixels in an image).</li>
    <li><strong>Translation Invariance:</strong> CNNs can detect features no matter where they appear in the input. For example, a cat can be recognized in different positions within an image.</li>
    <li><strong>Parameter Sharing:</strong> Instead of learning separate parameters for each location in the input, CNNs use the same filter across the entire input, significantly reducing the number of parameters and computational complexity.</li>
    <li><strong>Handling Large Inputs:</strong> CNNs are highly efficient at handling large inputs (like high-resolution images), thanks to their hierarchical structure, where complex features are built from simpler ones.</li>
</ul>

<h1>5. Applications of CNNs</h1>
<p>CNNs are primarily used in the following domains:</p>
<ul>
    <li><strong>Image Classification:</strong> Categorizing images into predefined classes (e.g., identifying whether an image contains a dog or a cat).</li>
    <li><strong>Object Detection:</strong> Detecting and localizing multiple objects within an image (e.g., detecting faces or vehicles in an image).</li>
    <li><strong>Image Segmentation:</strong> Classifying each pixel in an image into a category, which is used in applications like medical imaging (e.g., detecting tumors in MRI scans).</li>
    <li><strong>Video Analysis:</strong> Understanding actions and events in videos (e.g., activity recognition or gesture recognition).</li>
    <li><strong>Facial Recognition:</strong> Identifying or verifying individuals based on facial features.</li>
    <li><strong>Natural Language Processing:</strong> Though typically used in computer vision, CNNs have also found applications in processing text for tasks such as sentiment analysis and document classification.</li>
</ul>
', 2, 
                                '2024-11-02', '2024-11-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (54, 18, 'Pooling Layers', 
                                '<h1>1. Introduction to Pooling Layers</h1>
<p>In Convolutional Neural Networks (CNNs), a pooling layer is used to reduce the spatial dimensions (height and width) of the feature maps while retaining the most important information. Pooling helps to decrease the computational load, reduce the number of parameters, and prevent overfitting, making the model more efficient and robust.</p>
<p>The key idea behind pooling is that by reducing the spatial size, the model becomes less sensitive to small translations, rotations, or distortions in the input image. Pooling layers are placed between convolutional layers and help progressively reduce the spatial size of the data.</p>

<h1>2. Purpose of Pooling Layers</h1>
<ul>
    <li><strong>Dimensionality Reduction:</strong> Pooling reduces the size of the feature maps, which helps in reducing the number of parameters and computations in the network, thereby speeding up the training process.</li>
    <li><strong>Invariance to Translation:</strong> Pooling makes the model more invariant to small translations in the input, meaning that the CNN can recognize patterns in different positions within the image.</li>
    <li><strong>Preventing Overfitting:</strong> By summarizing the information and reducing the complexity of the feature maps, pooling layers help to prevent the network from overfitting to the training data.</li>
</ul>

<h1>3. Types of Pooling Layers</h1>
<p>There are several types of pooling operations, but the two most commonly used are max pooling and average pooling.</p>

<h2>1. Max Pooling</h2>
<p>Max pooling is the most widely used pooling operation in CNNs. In max pooling, the input feature map is divided into non-overlapping rectangular regions (called windows), and for each region, the maximum value is selected. This operation is useful because it retains the most prominent features in the feature map, such as edges or textures.</p>
<p><strong>Example:</strong> Suppose we have a 2x2 region in the feature map:</p>
<pre>
1  3
2  4
</pre>
<p>After max pooling (with a 2x2 window), the result would be:</p>
<pre>
4
</pre>
<p><strong>Why it works:</strong> Max pooling captures the most significant activations from the feature map, which helps preserve the key features for object recognition.</p>

<h2>2. Average Pooling</h2>
<p>Average pooling works similarly to max pooling, but instead of selecting the maximum value, it computes the average of all values in the pooling region. This method retains more information than max pooling, but it is less likely to highlight the most prominent features.</p>
<p><strong>Example:</strong> Consider the same 2x2 region:</p>
<pre>
1  3
2  4
</pre>
<p>After average pooling (with a 2x2 window), the result would be:</p>
<pre>
(1+3+2+4) / 4 = 2.5
</pre>
<p><strong>Why it works:</strong> Average pooling can help preserve the overall pattern, but it might smooth out important features, making it less effective in certain applications compared to max pooling.</p>

<h2>3. Global Pooling</h2>
<p>Global pooling reduces each feature map to a single value. It is typically used at the end of the CNN to summarize the entire feature map. Common types include Global Max Pooling (selecting the maximum value from the entire feature map) and Global Average Pooling (calculating the average of all the values in the feature map).</p>
<p>Global pooling is often used in architectures where we want to reduce the output to a fixed size (for example, for use in fully connected layers).</p>
', 3, 
                                '2024-11-02', '2024-11-02');