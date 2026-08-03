# SpaceX Falcon 9 First-Stage Landing Prediction

**Applied Data Science Capstone**

Predicts whether a SpaceX Falcon 9 first stage will land successfully, using
data collected from the SpaceX REST API and Wikipedia, explored with SQL and
visualization, mapped interactively with Folium, presented via a Plotly Dash
dashboard, and modeled with four classical ML classifiers.

## Repository structure

```
notebooks/
  01_data_collection_api.ipynb        GET request + JSON normalization
  02_data_wrangling.ipynb             Web scraping, cleaning, outcome labeling
  03_eda_sql.ipynb                    SQL exploratory queries
  04_eda_visualization.ipynb          Seaborn/Matplotlib EDA charts
  05_interactive_visual_analytics.ipynb   Folium map + Plotly Dash app
  06_predictive_analysis.ipynb        Classification: LR, SVM, Decision Tree, KNN
data/
  spacex_launch_data.csv              Cleaned, labeled launch dataset (90 rows)
  spacex_features_one_hot.csv         One-hot-encoded feature matrix (83 cols)
sql/
  eda_queries.sql                     Standalone copy of the SQL EDA queries
assets/
  launch_sites_map.png                Static render of the launch-site map
  dash_dashboard_preview.png          Static preview of the dashboard charts
requirements.txt
```

## Key results

| Metric | Value |
|---|---|
| Launches analyzed | 90 (Falcon 9 only) |
| Historical landing success rate | 66.7% |
| Best model (cross-validation) | Decision Tree — 86.3% |
| Best model (test set) | 83.3% (15/18) |
| Launch sites | CCAFS SLC-40, KSC LC-39A, VAFB SLC-4E |

## Running locally

```bash
pip install -r requirements.txt
jupyter notebook notebooks/
```

Notebook 5 launches an interactive Folium map and a live Plotly Dash server —
run it locally to interact with both; static previews are included in `assets/`
for quick reference.

## Data source

[SpaceX REST API](https://github.com/r-spacex/SpaceX-API) and the
[Falcon 9 and Falcon Heavy launches Wikipedia page](https://en.wikipedia.org/wiki/List_of_Falcon_9_and_Falcon_Heavy_launches).
