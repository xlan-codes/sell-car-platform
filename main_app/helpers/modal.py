from .constant import _type_one, _type_two, _type_three, _mk_one, _mk_two

def get_modal_type(filterType):
    if filterType in _type_one:
        return 'main/automjeti/search/modal_types/modal_type_one.html'
    elif filterType in _type_two:
        return 'main/automjeti/search/modal_types/modal_type_two.html'
    elif filterType in _type_three:
        return 'main/automjeti/search/modal_types/modal_type_three.html'
    else:
        return 'main/automjeti/search/modal_types/not_implemented.html'


def _get_modal_mk():
    pass