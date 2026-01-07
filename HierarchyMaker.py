import pandas as pd
import networkx as satan


def hiymaker():
    print("running hierarchy maker")

    input_file = "pandas.xlsx"

    df = pd.read_excel(input_file, sheet_name="Input")

    df = df.replace(
        to_replace=r"^0a\[blanks\]$",
        value="",
        regex=True
    )

    required_cols = {"Parent", "Node"}
    if not required_cols.issubset(df.columns):
        raise ValueError(
            "Input sheet must contain 'Parent' and 'Node' columns")

    G = satan.from_pandas_edgelist(
        df,
        source="Parent",
        target="Node",
        create_using=satan.DiGraph
    )

    roots = [n for n, d in G.in_degree() if d == 0]
    leaves = [n for n, d in G.out_degree() if d == 0]

    all_paths = []

    for root in roots:
        for leaf in leaves:
            for path in satan.all_simple_paths(G, root, leaf):
                all_paths.append(path)

    for node in satan.nodes_with_selfloops(G):
        all_paths.append([node, node])

    if not all_paths:
        output_df = pd.DataFrame(columns=["level_0"])
    else:
        output_df = (
            pd.DataFrame(all_paths)
            .add_prefix("level_")
            .fillna(" ")
        )

    with pd.ExcelWriter(
        input_file,
        engine="openpyxl",
        mode="a",
        if_sheet_exists="replace"
    ) as writer:
        output_df.to_excel(writer, sheet_name="Output", index=False)

    print("hierarchy generation complete")
