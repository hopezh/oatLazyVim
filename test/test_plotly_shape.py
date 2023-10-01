# import plotly.graph_objects as go
#
# fig = go.Figure(
#     go.Scatter(
#         # x=[0, 1, 2, 0],
#         # y=[0, 2, 0, 0],
#         x=[0, 1, 2, 0, None, 3, 3, 5, 5, 3],
#         y=[0, 2, 0, 0, None, 0.5, 1.5, 1.5, 0.5, 0.5],
#         fill="toself",
#     )
# )
#
# fig.show()

import plotly.express as px
from dash import Dash, Input, Output, dcc, html

app = Dash(__name__)


app.layout = html.Div(
    [
        html.H4("Iris plot an interactive horizontal line"),
        html.P(
            "↓↓↓ try downloading the plot ↓↓↓",
            style={"text-align": "right", "font-weight": "bold"},
        ),
        dcc.Graph(id="graph"),
        html.P("Position of hline"),
        dcc.Slider(
            id="slider-position",
            min=1,
            max=7,
            value=2.5,
            step=0.1,
            marks={1: "1", 7: "7"},
        ),
    ]
)


@app.callback(Output("graph", "figure"), Input("slider-position", "value"))
def display_graph(pos_x):
    df = px.data.iris()  # replace with your own data source
    fig = px.scatter(df, x="petal_length", y="petal_width")
    fig.add_vline(x=pos_x, line_width=3, line_dash="dash", line_color="green")
    fig.add_hrect(y0=0.9, y1=2.6, line_width=0, fillcolor="red", opacity=0.2)
    return fig


app.run_server(debug=True)
