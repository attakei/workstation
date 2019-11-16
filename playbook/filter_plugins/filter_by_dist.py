from typing import List, Dict
from ansible import errors


def filter_by_dist(packages: List[Dict], dist: str):
    filtered = []
    for p in packages:
        if dist not in p:
            continue
        package = p[dist]
        package.setdefault('state', 'present')
        filtered.append(package)
    print(filtered)
    return filtered


class FilterModule(object):
    def filters(self):
        return {
            'dist_only': filter_by_dist,
        }