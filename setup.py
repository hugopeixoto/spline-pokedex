from setuptools import setup, find_packages
setup(
    name = 'spline-pokedex',
    version = '0.1',
    packages = find_packages(),

    install_requires = [
        'spline',
        'pokedex',
        'WTForms>=1.0',
        'SQLAlchemy>=0.9.7',
    ],

    include_package_data = True,
    package_data={'splinext': ['*/i18n/*/LC_MESSAGES/*.mo']},

    zip_safe = False,

    entry_points = {'spline.plugins': [
        'pokedex = splinext.pokedex:PokedexPlugin',
        'gts = splinext.gts:GTSPlugin',
    ]},

    namespace_packages = ['splinext'],

    message_extractors = {'splinext': [
        ('**.py', 'spline-python', None),
        ('*/templates/**.mako', 'spline-mako', {'input_encoding': 'utf-8'}),
        ('*/content/**.html', 'spline-mako', {'input_encoding': 'utf-8'})]},
)
