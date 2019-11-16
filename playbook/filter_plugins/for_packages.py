from typing import List, Dict
from ansible import errors


def filter_by_dist(packages: List[Dict], module: str):
    filtered = []
    for p in packages:
        if module not in p['modules']:
            continue
        package = {}
        package.setdefault('state', 'present')
        p_mst = p['modules'][module]
        if isinstance(p_mst, str):
            package['name'] = p_mst
        else:
            package = dict(package, **p_mst)
        filtered.append(package)
    return filtered


class FilterModule(object):
    def filters(self):
        return {
            'by_module': filter_by_dist,
        }
