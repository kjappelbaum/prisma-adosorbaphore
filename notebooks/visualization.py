from ase_notebook.data import load_data_file
import numpy as np 
from pymatgen.io.ase import AseAtomsAdaptor


data = load_data_file("vesta_element_data.json")
colors = [
    "#{0:02X}{1:02X}{2:02X}".format(*(int(x * 255) for x in (r, g, b)))
    for r, g, b in zip(data["r"], data["g"], data["b"])
]

element_colors = dict(zip(data["element"], colors))



def create_atoms_with_color_arrays(s, indices):
    atoms = AseAtomsAdaptor().get_atoms(s)
    colors = []
    opacities = []
    for i, site in enumerate(s):
        if i in indices:
            e = element_colors[site.specie.symbol]
            colors.append(e)
            opacities.append(1.0)
        else:
            colors.append(element_colors[site.specie.symbol])
            opacities.append(0.01)
    atoms.arrays['color_array'] = np.array(colors)
    atoms.arrays['opacity_array'] = np.array(opacities)

    return atoms

def show_atoms(atoms, filename, zoom=1.0, repeat_uc=(2, 2, 2), show_cell=True, lighten_by_depth=True, show_bonds=False, bond_radii_scale=1.5):
    from ase_notebook import concatenate_svgs
    from ase_notebook.backend.svg import svg_to_pdf
    from ase_notebook import AseView, ViewConfig, get_example_atoms
    from IPython.display import SVG
    config = ViewConfig()
    ase_view = AseView(config)
    ase_view.config.canvas_background_opacity = 0.0
    ase_view.config.atom_colormap = 'vesta'

    ase_view.config.atom_color_by = 'color_array'
    ase_view.config.atom_color_array = 'color_array'
    ase_view.config.atom_opacity_by = 'opacity_array'
    ase_view.config.atom_show_label = False #True
    ase_view.config.atom_stroke_width = 0.2
    ase_view.config.show_bonds = show_bonds
    ase_view.config.bond_radii_scale =bond_radii_scale
    if lighten_by_depth:
        ase_view.config.atom_lighten_by_depth = 0.3
    ase_view.config.zoom = zoom
    ase_view.config.show_unit_cell = show_cell

    svgs = []
    for rot in ["45x,45y,45z", "90z", "90x", "90y"]:
        ase_view.config.rotations = rot
        svgs.append(
            ase_view.make_svg(atoms, center_in_uc=True, repeat_uc=repeat_uc)
        )
    svg = concatenate_svgs(
        svgs, max_columns=2, scale=0.5, label=True
    )

    svg_f = SVG(svg.tostr().decode('utf-8'))
    if filename is not None:
        svg_to_pdf(svg_f.data, filename)
    return svg